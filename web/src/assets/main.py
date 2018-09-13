from flask import Flask, redirect
from flask_mako import MakoTemplates, render_template
import json
from collections import OrderedDict

app = Flask(__name__)
app.config.from_object(__name__)
app.config.from_envvar('FLASKR_SETTINGS', silent=True)
mako = MakoTemplates(app)

def diclist_find(diclist, link):
  for item in diclost:
    if item['link'] == link:
      return item

  return None

class Chapter:
  def __init__(self, chapter_json, nums):
    self.title = chapter_json['title']
    self.desc = chapter_json['desc']
    self.link = chapter_json['link']
    self.ready = chapter_json['ready']
    self.nums = nums

class Section:
  def __init__(self, section_json, langs, start_nums):
    self.name = section_json['name']
    self.chapters = []
    self.chapters_dict = OrderedDict()

    nums = start_nums
    for chapter_json in section_json['chapters']:
      chapter = Chapter(chapter_json, nums.copy())
      for lang in langs:
        self.chapters_dict[f'{lang}:{chapter.link[lang]}'] = chapter
        nums[lang] += 1
      self.chapters.append(chapter)

    self.last_nums = nums

  def get_chapter(self, lang, link):
    key = f'{lang}:{link}'
    if key in self.chapters_dict:
      return self.chapters_dict[key]
    
    return None
  
  def all_chapters(self):
    return self.chapters

class Course:
  def __init__(self, id):
    with open(f'courses/{id}.json') as file:
      course_json = json.load(file)

    self.id = id
    self.langs = course_json['langs']
    self.title = course_json['title']
    self.subtitle = course_json['subtitle']
    self.link = course_json['link']
    self.sections_dict = OrderedDict()
    
    nums = dict(zip(self.langs, [1]*len(self.langs)))
    for section in course_json['sections']:
      sec = Section(section, self.langs, nums)
      self.sections_dict[section['name']] = sec
      nums = sec.last_nums

  def get_section(self, name):
    return self.sections_dict[name]

  def get_chapter(self, lang, link):
    for section in self.all_sections():
      chapter = section.get_chapter(lang, link)
      if chapter != None:
        return chapter

    return None

  def all_sections(self):
    return self.sections_dict.values()

class Courses:
  def __init__(self):
    self.courses_dict = OrderedDict()
    self.langs = {
      "kurzy": "cz",
      "courses": "en"
    }

    introToProgr = Course('intro-to-progr')
    self.courses_dict['cz:uvod-do-progr'] = introToProgr
    self.courses_dict['en:intro-to-progr'] = introToProgr

  def get(self, lang, link):
    key = f'{lang}:{link}'
    if key in self.courses_dict:
      return self.courses_dict[key]

    return None

class Counter:
  def __init__(self):
    self.value = 1

  def next(self):
    value = self.value
    self.value += 1
    return value

courses = Courses()

@app.route('/')
def index_cz():
  return render_template(
    'index_cz.mako',
    courses=courses
  )

@app.route('/en')
def index_en():
  return render_template(
    'index_en.mako',
    courses=courses
  )

@app.route('/<courses_url>/<course_link>')
def course_index(courses_url, course_link):
  return redirect(f'/{courses_url}/{course_link}/index')

@app.route("/<courses_url>/<course_link>/<chapter_link>/")
def course_chapter(courses_url, course_link, chapter_link):
  lang = courses.langs[courses_url]
  course = courses.get(lang, course_link)

  if chapter_link == 'index':
    return render_template(
      f'{courses_url}/{course_link}/index.mako',
      course=course,
      lang=lang
    )
  else:
    return render_template(
      f'{courses_url}/{course_link}/{chapter_link}.mako', 
      chapter=course.get_chapter(lang, chapter_link),
      counter=Counter(),
      lang=lang
    )
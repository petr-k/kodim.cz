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
  def __init__(self, chapter_json, num):
    self.title = chapter_json['title']
    self.desc = chapter_json['desc']
    self.link = chapter_json['link']
    self.ready = chapter_json['ready']
    self.num = num

class Section:
  def __init__(self, section_json, start_num):
    self.name = section_json['name']
    self.chapters_dict = OrderedDict()
    
    num = start_num
    for chapter in section_json['chapters']:
      self.chapters_dict[chapter['link']] = Chapter(chapter, num)
      num += 1

    self.last_num = num

  def chapter_by_link(self, link):
    if link in self.chapters_dict:
      return self.chapters_dict[link]
    
    return None
  
  def all_chapters(self):
    return self.chapters_dict.values()

class Course:
  def __init__(self, link):
    with open(f'courses/{link}.json') as file:
      course_json = json.load(file)
    
    self.title = course_json['title']
    self.subtitle = course_json['subtitle']
    self.link = course_json['link']
    self.sections_dict = OrderedDict()
    
    num = 1
    for section in course_json['sections']:
      sec = Section(section, num)
      self.sections_dict[section['name']] = sec
      num = sec.last_num

  def section_by_name(self, name):
    return self.sections_dict[name]

  def chapter_by_link(self, link):
    for section in self.all_sections():
      chapter = section.chapter_by_link(link)
      if chapter != None:
        return chapter

    return None

  def all_sections(self):
    return self.sections_dict.values()

courses = {
  'uvod-do-progr': Course('uvod-do-progr'),
  'python-data': Course('python-data'),
  'jak-to-funguje': Course('jak-to-funguje')
}

class Counter:
  def __init__(self):
    self.value = 1

  def next(self):
    value = self.value
    self.value += 1
    return value

@app.route('/')
def index():
  return render_template('index.mako', courses=courses)

@app.route('/<course_link>')
def course_index(course_link):
  return redirect(f'/{course_link}/index')


@app.route("/<course_link>/<chapter_link>/")
def course_chapter(course_link, chapter_link):
  course = courses[course_link]

  if chapter_link == 'index':
    return render_template(
      f'{course_link}/index.mako',
      course=course
    )
  else:
    return render_template(
      f'{course_link}/{chapter_link}.mako', 
      chapter=course.chapter_by_link(chapter_link),
      counter=Counter()
    )
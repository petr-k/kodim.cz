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
  def __init__(self, chapter_json):
    self.title = chapter_json['title']
    self.desc = chapter_json['desc']
    self.link = chapter_json['link']
    self.ready = chapter_json['ready']

class Section:
  def __init__(self, section_json):
    self.name = section_json['name']
    self.chapters_dict = OrderedDict()

    for chapter in section_json['chapters']:
      self.chapters_dict[chapter['link']] = Chapter(chapter)

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
    
    for section in course_json['sections']:
      self.sections_dict[section['name']] = Section(section)

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
  'python-data': Course('python-data')
}

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
      course=course,
      counter={'chapter': 1}
    )
    
"""
  else:
    return render_template(
      f'{course_link}/{chapter_link}.mako', 
      course=course,
      chapter=course.chapter_by_link(chapter_link)
    )
"""
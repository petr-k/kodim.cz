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

class Course:
  def __init__(self, course_json):
    self.title = course_json['title']
    self.subtitle = course_json['subtitle']
    self.link = course_json['link']
    self.chapters_dict = OrderedDict()

    with open(f'courses/{self.link}/chapters.json') as file:
      all_chapters = json.load(file)

    for chapter in all_chapters:
      self.chapters_dict[chapter['link']] = Chapter(chapter)
    
  def chapter_by_link(self, link):
    return self.chapters_dict[link]
  
  def all_chapters(self):
    return self.chapters_dict.values()

class CoursesDB:
  courses_dict = OrderedDict()
  
  def __init__(self, filename):
    with open(filename) as file:
      all_courses = json.load(file)

    for course in all_courses:
      self.courses_dict[course['link']] = Course(course)
    
  def course_by_link(self, link):
    return self.courses_dict[link]
  
  def all_courses(self):
    return self.courses_dict.values()

courses_db = CoursesDB('courses/courses.json')

@app.route('/')
def index():
  return render_template('index.mako', courses_db = courses_db)

@app.route('/<course_link>')
def course_index(course_link):
  return redirect(f'/{course_link}/index')

@app.route("/<course_link>/<chapter_link>/")
def course_chapter(course_link, chapter_link):
  course = courses_db.course_by_link(course_link)

  if chapter_link == 'index':
    return render_template('course-index.mako', course=course)
  else:
    return render_template(
      f'{course_link}/{chapter_link}.mako', 
      course=course,
      chapter=find_chapter(course, chapter_id)
    )
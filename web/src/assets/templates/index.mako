<%inherit file="/layout.mako"/>

<%def name="course_tile(course)">
  <div class="course-tile">
    <style>
      .course-link .icon-${course.link} {
        background-image: url('/img/${course.link}/intro-outline.svg');
        transition: 600ms;
      }

      .course-link:hover .icon-${course.link} {
        background-image: url('/img/${course.link}/intro-icon.svg');
      }
    </style>
    <a class="course-link" href="/${course.link}">
      <div class="course-picture icon-${course.link}"></div>
      <h2>${course.title}</h2>
      <p>${course.subtitle}</p>
    </a>
  </div>
</%def>

<%block name="header">
  <div class="intro container">
    <img class="intro-image" src="/img/notebook.svg" alt="Notebook" />
    <div class="intro-text">
      <h1 class="intro-title">Kódím.cz</h1>
      <p class="intro-subtitle">
        Základy programování pro všechny, kteří si chtějí hrát a mít radost z učení.
      </p>
    </div>
  </div>
</%block>

<%block name="main">
  <div class="courses container">
    % for course in courses_db.all_courses():
      ${course_tile(course)}
    % endfor
  </div>
</%block>
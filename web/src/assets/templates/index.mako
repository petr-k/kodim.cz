<%inherit file="/layout.mako"/>

<%def name="courseTile(course)">
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
      <h3>${course.title}</h3>
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
  <section class="container">
    <h2>Czechitas</h2>
    <p>Kurzy pořádané ve spolupráci s <a href="https://www.czechitas.cz">Czechitas</a>, kteří pomáhají holkám, ženám i dětem poznat svět informačních technologií.</p>
    
    <div class="courses">
      ${courseTile(courses['uvod-do-progr'])}
      ${courseTile(courses['python-data'])}
    </div>
  </section>

  <%doc>
    <section class="container">
      <h2>Pro zvídavé</h2>
      <p>Pro všechny, kteří se chtějí dozvědět víc a opravdu rozumět tomu, jak věci kolem počítačů fungují.</p>
      
      <div class="courses">
        ${courseTile(courses['jak-to-funguje'])}
      </div>
    </section>
  </%doc>
</%block>
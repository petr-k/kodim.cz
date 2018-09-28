<%inherit file="/layout.mako"/>
<%namespace name="index" file="index.mako"/>

<%block name="header">
  <div class="intro container">
    <img class="intro-image" src="/img/notebook.svg" alt="Notebook" />
    <div class="intro-text">
      <h1>Kódím.cz</h1>
      <p>
        Introduction to programming for all those who are playful and want to enjoy learning.
      </p>
    </div>
  </div>
</%block>

<%block name="main">
  <section class="container tiles-section">
    <h2>Czechitas</h2>
    <p>Courses done in cooperation with <a href="https://www.czechitas.cz/en/">Czechitas</a>, who help women, girls and children to explore the world of information technologies.</p>

    <div class="courses">
      ${index.courseTile('courses', courses.get('en', 'intro-to-progr'))}
    </div>
  </section>
</%block>
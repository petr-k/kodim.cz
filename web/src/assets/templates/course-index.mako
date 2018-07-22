<%inherit file="/layout.mako"/>

<%def name="chapterTile(chapter)">
  <div class="chapter-tile">
    <div class="chapter-num">${counter['chapter']}</div>
    <div class="chapter-info">
      <a href="../${chapter.link}"><h2 class="chapter-title">${chapter.title}</h2></a>
      <p class="chapter-desc">${chapter.desc}</p>
    </div>
  </div>

  <% 
    counter['chapter'] = counter['chapter'] + 1
  %>
</%def>

<%def name="section(name)">
  <section class="container chapters">
    %for chapter in course.section_by_name(name).all_chapters():
      ${chapterTile(chapter)}
    %endfor
  </section>
</%def>

<%block name="header">
  <div class="intro container">
    <img class="intro-image" src="/img/${course.link}/intro-icon.svg" alt="${course.title}" />
    <div class="intro-text">
      <h1 class="course-title">${course.title}</h1>
      <p class="intro-subtitle">
        ${course.subtitle}
      </p>
    </div>
  </div>
</%block>
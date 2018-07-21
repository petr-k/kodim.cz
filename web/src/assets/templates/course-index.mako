<%inherit file="/layout.mako"/>

<%def name="chapterTile(num, link)">
  <div class="chapter-tile">
    <div class="chapter-num">${num}</div>
    <div class="chapter-info">
      <a href="${link}"><h2 class="chapter-title">${caller.title()}</h2></a>
      <p class="chapter-desc">${caller.desc()}</p>
    </div>
  </div>
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
  <div class="chapters container">
    %for i, chapter in enumerate(course.all_chapters()):
      <%self:chapterTile num="${i+1}" link="../${chapter.link}">
        <%def name="title()">
          ${chapter.title}
        </%def>
        <%def name="desc()">
          ${chapter.desc}
        </%def>
      </%self:chapterTile>
    %endfor
  </div>
</%block>
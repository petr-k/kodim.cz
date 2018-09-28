<%inherit file="/layout.mako"/>

<%def name="chapterTile(chapter)">
  <div class="chapter-tile">
    <div class="chapter-tile-num">${chapter.nums[lang]}</div>
    <div class="chapter-info">
      <a href="../${chapter.link[lang]}"><h3>${chapter.title[lang]}</h3></a>
      <p>${chapter.desc[lang]}</p>
    </div>
  </div>
</%def>

<%def name="section(name)">
  <div class="chapters">
    %for chapter in course.get_section(name).all_chapters():
      ${chapterTile(chapter)}
    %endfor
  </div>
</%def>

<%block name="header">
  <div class="intro container">
    <img class="intro-image" src="/img/${course.id}/intro-icon.svg" alt="${course.title[lang]}" />
    <div class="intro-text course-intro">
      <h1>${course.title[lang]}</h1>
      <p>
        ${course.subtitle[lang]}
      </p>
    </div>
  </div>
</%block>
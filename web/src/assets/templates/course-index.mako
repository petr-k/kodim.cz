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
  <%self:pageIntro title="${course.title[lang]}" display="4">
    <%def name="logo()">
      <img class="logo" src="/img/${course.id}/intro-icon.svg" alt="${course.title[lang]}" />
    </%def>
    <%def name="lead()">
      ${course.subtitle[lang]}
    </%def>
  </%self:pageIntro>
</%block>
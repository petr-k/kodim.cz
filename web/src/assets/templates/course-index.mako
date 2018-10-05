<%inherit file="/layout.mako"/>

<%def name="chapterTile(chapter)">
  <div class="my-3 col-md-6 d-flex align-items-baseline">
    <div class="chapter-tile-num">${chapter.nums[lang]}</div>
    <div>
      <a href="${chapter.link[lang]}/"><h3>${chapter.title[lang]}</h3></a>
      <p>${chapter.desc[lang]}</p>
    </div>
  </div>
</%def>

<%block name="header">
  <%self:pageIntro display="4">
    <%def name="title()">
      ${course.title[lang]}
    </%def>
    <%def name="logo()">
      <img class="logo" src="/img/${course.id}/intro-icon.svg" alt="${course.title[lang]}" />
    </%def>
    <%def name="lead()">
      ${course.subtitle[lang]}
    </%def>
  </%self:pageIntro>
</%block>

<%block name="main">
  <section class="container my-5">
    <%block name="courseLead"></%block>
  </section>
  <section class="container my-5">
    %for section in course.all_sections():
      %if section.ready[lang]:
        <h2 class="my-5 text-center">${section.title[lang]}</h2>
        <div class="row">
          %for i, chapter in enumerate(section.all_chapters()):
            %if chapter.ready[lang]:
              ${chapterTile(chapter)}
              %if i % 2 == 1:
                <div class="w-100"></div>
              %endif
            %endif
          %endfor
        </div>
      %endif
    %endfor
  </section>
</%block>
<%inherit file="/layout.mako"/>

<%def name="courseTile(url, course)">
  <% lang = courses.langs[url] %>
  
  <div class="col-md-6 text-center">
    <style>
      .course-link .icon-${course.id} {
        background-image: url('/img/${course.id}/intro-outline.svg');
        transition: 600ms;
      }

      .course-link:hover .icon-${course.id} {
        background-image: url('/img/${course.id}/intro-icon.svg');
      }
    </style>
    <a class="course-link" href="/${url}/${course.link[lang]}">
      <div class="course-picture icon-${course.id}"></div>
      <h3>${course.title[lang]}</h3>
      <p>${course.subtitle[lang]}</p>
    </a>
  </div>
</%def>

<%def name="section(title)">
  <section class="container">
    <h2 class="my-5 text-center">${title}</h2>
    ${caller.lead()}
    
    ${caller.body()}
  </section>
</%def>

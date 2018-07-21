<%inherit file="/layout.mako"/>

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
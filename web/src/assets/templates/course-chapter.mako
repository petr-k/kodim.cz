<%inherit file="/layout.mako"/>

<%def name="lesson()">
  <section class="lesson-section">
    <div class="container">
      ${caller.body()}
    </div>
  </section>
</%def>

<%def name="exercises()">
  <section class="exercises-section">
    <div class="container">
      ${caller.body()}
    </div>
  </section>
</%def>

<%def name="alert(type, title)">
  </div> <!-- container -->
  <div class="alert alert-${type}">
    <div class="container alert-container">
      <div class="alert-icon alert-icon-${type}"></div>
      <div class="alert-body">
        <div class="alert-title">
          ${title}
        </div>
        <p>
          ${caller.body()}
        </p>
      </div>
    </div>
  </div>
  <div class="container">
</%def>

<%def name="alert_done()">
  <%self:alert type="done" title="Hotovo!">
    Hurá, pokud jste dorazili až sem, máte hotovo. Nalepte se lísteček a pokud chcete, můžete pokračovat bonusovými příklady.
  </%self:alert>
</%def>

<%def name="alert_done_en()">
  <%self:alert type="done" title="Hotovo!">
    Huray! If you have this far, it means you are done. Put a sticker on you monitor and if you feel like it continue with the bonus exercises.
  </%self:alert>
</%def>

<%def name="alert_warning()">
  <%self:alert type="warning" title="Pozor!">
    ${caller.body()}
  </%self:alert>
</%def>

<%def name="exrc(title)">
  <div class="exercise">
    <div class="exercise-title">
      <div class="exercise-num">${counter.next()}</div>
      <h3>${title}</h3>      
    </div>
    <div class="exercise-body">
      ${caller.body()}
    </div>
  </div>
</%def>

<%block name="header">
  <div class="chapter-intro container">
    <div class="chapter-number">${chapter.nums[lang]}</div>
    <h1 class="chapter-title">${chapter.title[lang]}</h1>
  </div>
</%block>

<%block name="main">
  ${self.body()}
</%block>
<%inherit file="/course-index.mako"/>

<%block name="main">
  <section class="container">
    <p>This course will introduce you to programming basics. You don't need any knowledge for start other than completely basic compuer literacy. Together
    we will go step by step and I'll try to explain each part to you so that you can really understand it.</p>
  </section>

  <section class="container">
    <h2>Basics</h2>
    ${self.section('basics')}
    <h2>Getting started</h2>
    ${self.section('lets-start')}
  </section>
</%block>

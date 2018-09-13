<%inherit file="/course-index.mako"/>

<%block name="main">
  <section class="container">
    <p>This course will guide you through the very basics of programming. To start the course, no other experience is requiered besides very basic computer skills. We will be advancing at a slow pace, step by step. I will strive to explaing every little thing in such a way that you will be able to really understand it.</p>
  </section>
  
  <section class="container">
    <h2>Basics</h2>
    ${self.section('basics')}
    <h2>Starting to code</h2>
    ${self.section('lets-start')}
  </section>  
</%block>
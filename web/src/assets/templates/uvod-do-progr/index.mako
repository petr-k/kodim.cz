<%inherit file="/course-index.mako"/>

<%block name="main">
  <section class="container">
    <p>Tento kurz vás provede úplnými základy programování. Do začátku nebudete potřebovat žádné jiné znalosti než úplně základní počítačovou gramotnost. Budeme společně postupovat pomalu krok po kroku a každou jednotlivou věc se budu snažit vysvětlit tak, abyste jí opravdu dokázali porozumět.</p>
  </section>
  
  <section class="container">
    <h2>Základy</h2>
    ${self.section('zaklady')}
    <h2>Začínáme programovat</h2>
    ${self.section('zaciname')}
  </section>  
</%block>
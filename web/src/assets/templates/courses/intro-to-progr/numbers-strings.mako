<%inherit file="/course-chapter.mako"/>

<%self:exercises>
  <h2>Exercises</h2>

  <%self:exrc title="Simple arithmetics">
    <p>Use the Python console as a calculator:</p>
    <ol>
      <li>One ticket to the <em>Fist up your Eye</em> theatre costs 12 euro. Compute the monthly income of the theatre from the ticket sales in case that the average number of visitors per play is 174 and the theatre plays 15 plays a month.</li>
      <li>The theatre decided to offer discounted student tickets which cost 65% of the full ticket price. How does the income per play changes if you know that among all visitors there is 30% of students on avarege?</li>
    </ol>
  </%self:exrc>
  
  <%self:exrc title="Playing with strings">
    <ol>
      <li>Create a string with the name of the theatre.</li>
      <li>Create a string with the name of the theatre by adding together individual words of the name.</li>
      <li>Try to multiplay a string by an integer. What result did you get?</li>
      <li>Create a string containing a hundred copies of number 1 followed by hundred copies of number 0.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>
  
  <%self:exrc title="Interest">
    <p>The Phew bank co. offers on their website a savings account with an interest of 2.4%. If you deposit 1&nbsp;000&nbsp;000 kč, how much money will you have saved after 10 years?</p>
  </%self:exrc>

  <%self:exrc title="New carpet">
    <p>We need to buy a carpet for the small theatre hall which has the shape of a square and are of 30m<sup>2</sup>. How long should the side of the carpet be? Will it fit into a van with the cargo space being 5m long?</p>
  </%self:exrc>

  <%self:exrc title="Shannon's number">
    <ol>
      <li>So called <em>Shannon's number</em> has value of 10<sup>120</sup> and states the minimum number of possible chess games. Create a string containing this number using the usual decimal system. For example, 10<sup>3</sup> is 1000, 10<sup>6</sup> is 1000000 etc.</li>
      
      <li>In Czech, it is customery to put a space after every three zeroes in a number having a lot of digits. One milion is then written as 1&nbsp;000&nbsp;000. Create a string that contains the Shannon's number written in this format.</li>
    </ol>
  </%self:exrc>
</%self:exercises>

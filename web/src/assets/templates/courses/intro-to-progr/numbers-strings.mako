<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>In this chapter we will introduce you to programming basics in Python. We won't write entire programs yet but we will only send individual commands to Python and we'll se what answers it gives to us. As we said before computers are basically just slightly smarter and freakishly fast calculators. So the easiest way to get familiar with programming is to let Python to calculate something for us.</p>

  <h2>Python Console</h2>

  <p>In order to talk to Python we need to start so called <em>Python console</em>. It is an environment where we can communicate with Python and send commands to it.</p>

  <p>If you are on Windows, run Python console by typoing the following command int ote command line.</p>

  <pre>$ python</pre>

  <p>Note that the dollar sign is not part of the command! We are using it to signify that you have to type this command into your operating system command line. If you are working on Mac OS or Linux you have to use a different command:</p>

  <pre>$ python3</pre>

  <%self:alert_warning>
    If you use the Windows command on Linux or Mac OS it will very likely launch a wrong version of Python in which the following lessons won't work.</p>
  </%self:alert_warning>

  <h2>Values</h2>
  <p><em>Values</em> represent all possible kinds of data that our programs can work with. Based on their usage values are split into multiple categories called <em>data types</em>. There's a large amount of data types. Right now we will introduce you to the most basic ones - integers and decimal numbers.</p>

  <h3>Integers</h3>

  <p>The simples data type are <em>integers</em>. This type includes values like 12, 1321500, -5, 0 etc. If you type a value into Python terminal, Python will print it back to you, which means that it understands you :-)</p>

  <pre>&gt;&gt;&gt; 127
127</pre>

  <h3>Decimal Numbers</h3>
  <p>We wouldn't last very long only with integers. The next data type are <em>decimal numers</em> like 13.4, 6.0, -0.0001, 0.0, etc. Beware that programmers always use a dot for decimal point, not a comma.</p>

  <pre>&gt;&gt;&gt; 3.141592
3.141592</pre>

  <h2>Arithmetic Operators</h2>
  <p>We know have the means to do some simple calculations using Python. These are the common arithmetic operators in Python:

  <ul>
    <li>addition:: <strong>+</strong></li>
    <li>subtraction: <strong>-</strong></li>
    <li>multiplication: <strong>*</strong></li>
    <li>division: <strong>/</strong></li>
  </ul>

  <p>Thanks to those operators we can use Python as a calculator to write <em>arithmetic expressions</em> like</p>

  <pre>&gt;&gt;&gt; 12 * 13 + 10</pre>
  <pre>&gt;&gt;&gt; (13.4 - 1.4) / 4</pre>

  <p>Additionally Python offers more useful operators:</p>

  <ul>
    <li>power: <strong>**</strong></li>
    <li>integer division: <strong>//</strong></li>
    <li>division remainder: <strong>%</strong></li>
  </ul>

  <p>Using the power operator we can calculate a power or a number:</p>

  <pre>&gt;&gt;&gt; 2 ** 8
256</pre>

  <p>Using integer division we can divide integers</p>

  <pre>&gt;&gt;&gt; 14 // 4
3</pre>

  <p>And if we want to know the remainder after integer division we can use the operator for division remainder</p>

  <pre>&gt;&gt;&gt; 14 % 4
2</pre>

  <h2>Strings</h2>
  <p>If we want to input a piece of text into Python we use a so called <em>string</em>. Strings in Python are enclosed into single our double quotes. For example:

  <div class="verbatim">
    <pre>&gt;&gt;&gt; 'martin'</pre>
    <pre>&gt;&gt;&gt; 'march 12 2018'</pre>
    <pre>&gt;&gt;&gt; "washing powder"</pre>
    <pre>&gt;&gt;&gt; "Don't panic"</pre>
  </div>

  <p>Strings partially behaves similar to numbers, for example we can add and multiply them</p>

  <pre>&gt;&gt;&gt; 'martin' + ' ' + 'podloucký'
martin podloucký
&gt;&gt;&gt; 'blah ' * 10
'blah blah blah blah blah blah blah blah blah blah '</pre>
</%self:lesson>

<%self:exercises>
  <h2>Excercises</h2>

  <%self:exrc title="Simple Arithmetics">
    <p>Use the Python terminal as a calculator:</p>
    <ol>
      <li>A single ticket for a Sore Thumb Theatre performance costs aroud €12. Calculate the theatre's monthly income from ticket sales if there's 174 visitors for one performance in average and the theatre runs 15 performances per month.</li>
      <p>The theatre has decided to offer discounts to students. A single student ticket costs 65% of a full ticket cost. How much will the theatre's income change if we know that students are 30% of the audience.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Playing with Strings">
    <ol>
      <li>Create a string containing the name of the theatre.</li>
      <li>Create a string containing the name of the theatre by adding together individual words of the name.</li>
      <li>Try to multiply a string by an integer. Createa a string that contains the character 1 a hundred times followed by a hundred 0 charecters.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonuses</h2>
  
  <%self:exrc title="Interest Rates">
    <p>Whoa bank Ltd. offers a savings account with 2.4% interest rate on their website. When you deposit €50 000  on such account, how much money will you have in 10 years?</p>
  </%self:exrc>

  <%self:exrc title="New Carpet">
    <p>We need to buy a new carpet for a small theatre hall. The hall is square-shaped with an area of 30m<sup>2</sup>. What is the length of a side of the caret? Will the rolled carped fit into a wagon which has 5 metres long cargo space?</p>
  </%self:exrc>

  <%self:exrc title="Shannon Number">
    <ol>
      <li>The so called <em>Shannon number</em> has a value of 10<sup>120</sup> and it tells us how many different chess games there are at least. Create a string that contains this number written normally using digits. For example 10<sup>3</sup> is 1000, 10<sup>6</sup> is 1000000 and so on.</li>
      <li>It is common to separate thousands in large numbers by a comma. That is one million is written as 1,000,000. Create a string that contains the Shannon number from the previous excercise written in this format.
    </ol>
  </%self:exrc>
</%self:exercises>

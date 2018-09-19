<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>When doing more complicated calculations we often need to save an intermediate result for later use. For that we have so called <em>variables</em>.</p>

  <p>Variable is sort of a named box or a drawer into which we can put some value in order not to lose it and so we could use it later in other calculations.</p>

  <p>For example, in a diet program we can calculate how many vanilla doughnuts a day we have eaten in the past 5 days.</p>

  <pre>&gt;&gt;&gt; total = 1 + 2 + 4 + 1 + 6
&gt;&gt;&gt; average = total / 5</pre>

  <h2>Variable Names</h2>
  <p>It's good to learn good habits since the very beginning as thez will make lives easier for us but also for programmers around us in the future. One of such habits is the correct way of creating names for variables.</p>

  <ul>
    <li>Variable names should not start with a capital letter, e.g. <var class="wrong">Count</var>. Such names are reserved for special types of variables that we will not touch in this course.</li>
    <li>Variable names should not contain diacritics, umlauts etc., e.g. <var class="wrong">počet</a>. Programming languages come from English-speaking environments where only English alphabet is used and so many programming languages can't deal with special characters in variable names.</li>
    <li>Variable names that consist of multiple words must not contain a space, e.g. <var class="wrong">hour count</var>. Python would think that those are two variables and it wouldn't know what to do with them. If you want to use multiple words in variable names us either so called camel case notation (<var>hourCount</var>) or snake case notation (<var>hour_count</var>).</li>
    <li>Always give variables names that describe what's stored inside of the variable. For example the variable <var>hour_count</var> clearly tells us that it holds some count of hours. You could be tempted to shorten the name like <var class="wrong">hrcnt</var>. But when someone else will read such program, they will hit their head against a wall trying to figure out what on earth does <code>hrcnt</code> mean.</li>
    <li>Finally, it's good to realize that programs and programmers almost always move in an international environment. So it's always better to name your variables in English.</li>
  </ul>
</%self:lesson>

<%self:exercises>
  <h2>Exercises</h2>
  
  <%self:exrc title="Playing with Variablesn">
    <p>Make sure to always choose variable names that indicate what stored inside the variable.</p>
    <ol>
      <li>Store some integer into a variable alled <var>actors</var>, e.g. a number of actors working in the theatre. Store some decimal number into another variable, representing for example the student price discount. Store a string into another variable, for example a name of a play.</li>
      <li>While you were working on the previous excercise, two more actors got hired into the theatre. Update the value stored in the variable <var>actors</var>. Think about what happened with the value that was stored there before.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Integer Division &amp; Division Remainder">
    <p>Experiment with operators for integer division and division remainder.</p>
    <ol>
      <li>How many times does number 72 fit into 2014? What is the remainder after dividing 1024 by 72?</li>
      <li>The theatre keeps play durations in minutes. For example the extremely boring and devastating play "Death in live stream" lasts 265 minutes. Save this value into a variable called <var>duration</var>.</li>
      <li>Use the variable <var>duration</var> to calculate the duration of the performance expressed in hours and minutes. Store the number of whole hours into a variable called <var>hours</var> and the remaining minutes into variable <var>minutes</var>.
    </ol>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>

  <%self:exrc title="Income">
    <p>Store the theatre income from ticket sale for a single play according to excerise 1.a) in variable <var>income1</var>. Calculate the income from ticket sale according to excerise 1.b) and store it in variable <var>income2</var>. Store the difference between those two values in a variable named <var>difference</var>.
  </%self:exrc>

  <%self:exrc title="Seats">
    <p>The main theatre hall has 350 sets. Can they be organized into rows with 32 seats each so that all rows are complete? If not, how many additional seats do we have to buy to make it possible? How many rows will we have then?</p>
  </%self:exrc>
</%self:exercises>

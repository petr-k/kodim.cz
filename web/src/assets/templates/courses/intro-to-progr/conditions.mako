<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Until now all our programs where just a mere sequence of commands executed one by one top to down. For more complex program we will need to execute some commands only under certain <em>conditions</em>. In other words we want our programs to be able to decide and change their behaviour based on an input from users.</p>

  <div class="text-img-right">
    <p>Our theatre has some adult content plays. We can't let any users younger than 18 year old to see such plays. Our program has to be able to decide whether the user is allowed to buy a ticket or not based on their age. Such program could look like this:</p>

    <img src="/img/intro-to-progr/adult-only.png" alt="Adult only" />
  </div>

<pre>if age >= 18:
  print('Welcome to the world of delight')
else:
  print('Get lost, kiddo!')</pre>

  <h2>Blocks</h2>
  <p>Notice how some of the lines in our condition are indented to the right. This is our first meeting with so called code blocks. Block is a way how to group several commands together. Such block can be part of a condition or, as we will learn later a cycle. Block always begins with a colon ad the end of the previous line. That way we tell Python what construct the block belongs to (in our case it's the <code>if</code>).</p>

  <p>Blocks are usually indented by several spaces. Many programmers prefer four spaces, some (like me) prefer two spaces. Some even indent blocks using one tabulator. Similarly to variable names, this is down to different coding styles and it's up to your aesthetic feeling. During this course I'll always recommend two spaces.</p>

  <p>If you choose a specific style it is very important to adhere to it. If you are going to mix spaces and tabs within a single block Python will get confused and will throw errors at you. If you indent one block with tabs and one with spaces within a single program Python will somehow deal with it but it's absolutely disgusting so don't you ever do it.</p>

  <h2>Conditions with Multiple Branches</h2>
  <p>Like with movies we would like to have more granular age groups for out theatre plays. We can for example have have plays unsuitable for small kids, while teenagers are OK. We will therefor need a condition with multiple branches:</p>

<pre>if age < 6:
  print('Pre-school')
elif vek < 15:
  print('Pupil')
elif vek < 18:
  print('Adolescent')
else:
  print('Adult')</pre>

  <h2>Comparison Operators</h2>
  <p>We have used operators <em>less than</em> <code>&lt;</code> and <em>greater than or equal</em> <code>&gt;=</code>. Here's an overview of other comparision operators</p>

  <ul>
    <li>equal: <strong>==</strong></li>
    <li>not equal: <strong>!==</strong></li>
    <li>greater than: <strong>&gt;</strong></li>
    <li>greater than or equal: <strong>&gt;=</strong></li>
    <li>less than: <strong>&lt;</strong></li>
    <li>less than or equal: <strong>&lt;=</strong></li>
  </ul>

  <p>Notice that equality is test uses two equal signs. This is because a single equal sign is used for something else - assinging values into variables.</p>
</%self:lesson>

<%self:exercises>

  <%self:exrc title="Simple Conditions">
    <ol>
      <li>
        <p>Create a program called <code>login.py</code>. In this program have the user input their username and password. If the password matches <em>simsalabim</em> the program will print</p>
        
        <pre>You may enter</pre>
        
        <p>Run the program in console and make sure it works as expected.</p>
      </li>
      <li>
        <p>Modify the program to output
        
        <pre>You shall not pass</pre>
        
        <p>if the user inputs a wrong password.</p>
      </li>
      <li>
        <p>Further modify the program so that if user enters a correct password the program will ask their age and lets them in only if they are older than 18 years. If user enters a wrong password don't ask them anything and just terminate the program using the <code>exit()</code> function.</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="More Complex Conditions">
    <p>Create a program <code>week.py</code>. In this program let the user to enter number of a day of the week. Print out a name of the day with this number, for example</p> 
    <pre>3 - wednesday</pre>
    <p>If user enters a number that's not between 1 and 7, print out</p>
    <pre>Invalid entry</pre>
    <p>Be careful when converting values so that you have a number where you want to have a number and a string where you want to have a string.</p>
  </%self:exrc>

  <%self:exrc title="Ticket Price">
    <p>And now we return to work on our reservation system.</p>
    <ol>
      <li>Copy the program <code>tickets01.py</code>, which you have written in a previous excercise, to <code>tickets02.py</code> so that we can further extend it and calculate the prices of tickets.</p>
      <li>When you have read user's age create a variable called <var>fullPrice</var> and store the value 12 into it.</li>
      <li>Create a condition which will store a price calculated based on the age of the user into variable <code>price</code>. Remember to round the results so that we have the price in whole euros.</li>
      <li>At the end write out the final price with some pretty message to the output.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>

  <%self:exrc title="Registration">
    <p>Create a program called <code>registration.py</code>. Let the program to pick a username and a password. Let them enter the password twice and check that they have entered the same password both times. Otherwise write out a warning that the password do not match. During the first input verify that the password is secure, that is that it is longer than 8 characters in this case.</p>
  </%self:exrc>

  <%self:exrc title="Roulette">
    <p>You can see they layout of numbers on classical French roulette. The roulette contains numbers 0 to 36. Each number excluding zero is either even or odd and red or black. Numbers 1 to 10 and 19 to 28 are red when odd and black when even. For the rest the rule is reverse, that is odd numbers are black and even are red. Zero is neither odd nor even, neither red nor black.</p>

    <div class="text-center">
      <img src="/img/intro-to-progr/roulette.png"/>
    </div>

    <p>Write a program where user enters a number and the program will tell them whether the number is odd or even, red or black or whether it's a zero.</p>
  </%self:exrc>

  <%self:exrc title="Leap Year">
    <p>Write a program that after entering a year outputs whether the year is a leap year or not. A year is a leap year if it is divisible by four. Years that are divisible by 100 are leap years only when they are also divisible by 400.</p>
  </%self:exrc>
</%self:exercises>

<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  
  <p>Here comes the big moment. Until now we talked to Python only in the terminal and sent only individual commands to be evaluated. But now that we can work with variables and functions, we can create out first program.</p>

  <p>A program is basically just a plain text file that contains multiple commands that Python evaluates one by one. So we don't have to type anything into the Python terminal anymore, we'll write all the commands into the program file.</p>

  <h2>Output into Terminal</h2>
  <p>There's a small catch though. When we wrote commands into the terminal, Python always returned the result immediately. But when we run a program Python will not automatically tell us any results. Programs often contain thousands of commands and we don't want to see a result of each and every one. We wouldn't be able to make heads or tails from that amount of results. So if we want to see any results we have to tell Python explicitly to to write it out into the terminal from which the program is being executed. We will use the <code>print()</code> function fo that. Equipped with this function we can set out to write our first program.</p> 

  <h2>First Program</h2>

  <p>Createa a new program called <code>program.py</code> in Visual Studio with the following lines:</p>

<pre>rate = 25
price = 12 * rate
print(price)
</pre>

  <p>This is a simple program that will calculate a price of a ticket in Czech crowns for the exchange rate 25 CZK for 1 Euro. We will run this program with the following command:</p>

<pre>$ python program.py</pre>

  <%self:alert_warning_en>
    <p>Beware the dollar sign at the beginning of the command. Do not type this character! The dollar sign indicates that this command is typed into the operating system command line, not into the Python console. So if your command line still starts with three arrows (<code>&gt;&gt;&gt;</code>) you are still inside of Python console and you need to terminate it with the <code>exit()</code> function.</p>
  </%self:alert_warning_en>

</%self:lesson>

<%self:exercises>
  <h2>Excercises</h2>

  <%self:exrc title="Simple Output">
    <p>Our very first program won't do anything else but output text onto the screen.</p>
    <ol>
      <li>
        <p>Create a program called <code>input-output.py</code>. Use the <code>print()</code> function in this program to print on the following onto the screen:</p>
        <pre>Sore Thumb Theatre</pre>

        <p>Run the program in the terminal and check that it does what it's supposed to do.</p>
      </li>
      <li>
        <p>Modify this program so that you put a name of some theatre play into the <var>name</var> variable and time of the performance into the <var>time</var> variable. Using the <code>print()</code> function display one line showing the name and the time of the play onto the screen, for example:</p>
        <pre>The Taming of the Shrew - 19:30</pre>
      </li>
      <li>
        <p>Further modify the program so that the variable <var>hour</var> holds the hour (as an integer) of the play start and the variale <var>minute</var> holds the minute, also as an integer. Make it so that the program output looks like this:</p>
        
        <pre>The Taming of the Shrew - 19:30</pre>
        
        <p>Beware that the values in <code>hour</code> and <code>minute</code> are of the type intger so you will have to convert them to a string using the <var>str()</var> function.</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Simple Input">
    <p>Now we want the program to be able to get input from the user.</p>
    <ol>
      <li>Write a program called <code>name.py</cpde> which will obtain user's first and last name using the <code>input()</code> function. Print them out on the screen similar to how you did in previous excercise.</li>
      <li>Let the user to input their age as well. Beware that the <code>input()</code> function always returns a string, but we want the variable <var>age</var> to contain an integer. Use the <code>int()</code> function to convert the value from a string to an integer. Again, print out the full name and age like you did in the previous version.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="A job for the Theatre">
    <p>The theatre needs an online ticket reservation system. You goal on this job is to create a registration for new users of this system.</p>
    <ol>
      <li>Create a program called <code>tickets01.py</code>. It will be the first version of our program for selling tickets.</li>
      <li>Write the program so that it prints "Sore Thumb Theatre" on the first line and on the third line it prints "You have to sign up to enter the system".</li>
      <li>On the next line ask user for their username and age. Save those into some variables.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>

  <%self:exrc title="Dice Rolls">
    <p>Write a program called <code>dice.py</code> which will simulate rolling two six-sided dice. It's output will be a sum of the two rolls.</p>

    <p><strong>Hint:</strong></p> 
    <ul>
      <li>To generate a random number use the function <code>randint()</code> from the module <code>random</code> like this: <code>random.randint()</code>.</li>
      <li>
        <p>If you want to use the module <code>random</code> you have to import it first by adding the following command at the very top of your program:</p>
        <pre>import random</pre>
      </li>
    </ul>
  </%self:exrc>

  <%self:exrc title="Number Generator">
    <p>Write a program called <code>generator.py</code> which will ask the user for two integers - the lower and upper bounds - and print out a random integery within those bounds.</p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Single Line Input</h2>
  <p>You've probably noticed that the <code>print()</code> function moves to a new line after each output so the next call will print one a new line. But sometimes we want an output without moving to a new line so that we could continue the output on the same line.</p>
</%self:lesson>

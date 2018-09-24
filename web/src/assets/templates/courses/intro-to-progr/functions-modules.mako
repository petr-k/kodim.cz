<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>So far we were only able to work with numbers and strings using arithmetic operators. But soon that will not be enough for us and we will need more complex operations which we call <em>functions</em>.</p>

  <p>A function is a more complicated calculation or a small program packed into sort of a box. We can give a name to this box so that we can use it in different places in our program. You can image a function to be like a toaster. Toaster does something useful (makes delicious toasts) which would otherwise be boring and tedious had we do it ourselves. Each function has its own name and usually some input (toast bread) and output (toasted bread). We start a function by <em>calling</em> it.</p>

  <p>Good example of a function in Python is <code>round()</code> which can round numbers for us. We use it like this:</p>

<pre>&gt;&gt;&gt; round(3.141592)
3</pre>

  <p>A function is always called by writing its name followed by parenthesis with the function's input (also called arguments or parameters). In our case we call the function with only one argument, the number 3.141592. When we call the function with an argument, the function will <em>return</em> a result.</p>

  <p>Mind that rounding in Python behaves slightly differently than what we are used to from school. For example try out the following commands:</p>

<pre>&gt;&gt;&gt; round(3.5)
4
&gt;&gt;&gt; round(2.5)
2
</pre>

  <p>The <code>round()</code> function always rounds to a nearest even number if the function input is exactly in between two values. For example 3.5 is exactly in the middle between 3 and 4. Because of this rule instead of always rounding up Python rounds up in half of the cases and down in the other half. It is an attempt for rounding to be more fair, but so far I haven't seen any other programming language that would do it this way.</p>

  <p>In addition to the <code>round()</code> function Python contains many more useful functions, some of which we will see later in this course. For now we can mention the function <code>len()</code> which returns the number of characters in a string. For example:</p>

<pre>&gt;&gt;&gt; name = 'Theodor Baldyhead'
&gt;&gt;&gt; len(name)
17
</pre>
  <h2>Modules</h2>
  <p>Python may contain a lot of useful functions, but considering the number of problems we want to solve using Python it is still not enough and we really need a lot more of them. To make things more organized we put functions into so called <em>modules</em>.</p>

  <p>One useful module is called <code>math</code> and contains many standard mathematical functions. Among others it contains functions to round up and round down. If we want to use functions from the <code>math</code> module we have to <em>import</em> it first using the following command:</p>

<pre>&gt;&gt;&gt; import math</pre>

  <p>After writing this command to the Python console we can call all functions from this module by writing the name of the module follow by a period and then the name of the function, like this:</p>

<pre>&gt;&gt;&gt; math.ceil(3.14)
4</pre>

  <p>Another useful module is called <code>random</code> and contains functions to generate random numbers. One of these functions is called <code>randint()</code>. It can generate random numbers within given boundaries. We can use it for example to simulate rolling a die.</p>

<pre>&gt;&gt;&gt; import random
&gt;&gt;&gt; random.randint(1, 6)
5
&gt;&gt;&gt; random.randint(1, 6)
1
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
1
&gt;&gt;&gt; random.randint(1, 6)
2
&gt;&gt;&gt; random.randint(1, 6)
4</pre>
</%self:lesson>

<%self:exercises>

  <%self:exrc title="Name Length">
    <p>Save the string "Sore Thumb Theatre" into a variable called <var>name</var>. If we use a design font on a sign on the side of the building, one character (including spaces) will be 30 cm wide. Use the <var>len()</var> function to find out how many characters there are in the name of the theatre and calculate the width of the sign in centimeters.</p>
  </%self:exrc>

  <%self:exrc title="Rounding">
    <p>The theatre wants to show ticket prices in both euros and Czech Crowns. Save the price of the student ticket (65% of €12) into an <var>euros</var> variable. Calculate the price of the student ticket in Czech Crowns (using the exchange rate of 24 CZK/1€) and use the <var>round()</var> function to store it in a variable called <var>crowns</var> as an integer.</p>
  </%self:exrc>

  <%self:exrc title="Rounding Up">
    <p>Import the <code>math</code> module and try the function <code>math.ceil()</code> which does rounding up. Modify the previous exercise to round up the price of the ticket.</p>
  </%self:exrc>

  <%self:exrc title="Random Numbers">
    <p>An information panel in the foayer of the theatre shows information about random plays. We need a random number generator for this panel which will generate random number a performance between 1 and 24. Import the module <code>random</code> and use its function <code>randint()</code> to generate several random numbers from this range.</p>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>

  <%self:exrc title="Traditional Rounding">
    <p>Surprisingly Python does not contain any function that would round numbers in the traditional way that we are all used to from school. That is unacceptable. We have to do something about it!</p>

    <ol>
      <li>Try to come up with a command (using the functions you already know) that will round a number in the variable <var>number</var> to an integer using the traditional rounding.</li>
      <li>If you want to test your solution you can generate the content of the <var>number</var> variable randomly using <code>random.uniform()</code> function. This function has the same input as <code>random.randint()</code> but it generates decimal numbers.</li>
    </ol>
  </%self:exrc>
</%self:exercises>

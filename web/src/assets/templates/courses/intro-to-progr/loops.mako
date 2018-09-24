<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Computers and programming languages have been created to save people from boring and repetitive work. Therefor we want to be able to tell the computer that it should repeat certain activity over and over again. To do that programming languages have a concept called loops or cycles.</p>

  <h2>FOR Loop</h2>
  <p>One of the most common loops in almost any programming language is called the <em>for loop</em>. This loop can go over all items in a given list and execute a certain block of code for each item. For example imagine that we have a list of grades of a particular student and we want to print them out onto the screen, one per line. To do that we only have to write this piece of code.</p>

<pre>grades = [1, 3, 2, 1, 1, 2]
for g in grades:
  print(g)</pre>

  <p>In this particular case our loop iterates over the list of the grades one by one. Grade which is currently being processed is stored in the <var>g</var> variable. We've chosen the name of this variable so that it is clear what is stored in it, hence <var>g</var> for "grade".</p>
  <p>Same as with conditions the FOR loop can have an entire block of commands to be executed. Let's have a list of names where we want to append an ending of an email address to each of them.</p>

<pre>names = ['peter', 'paul', 'judith', 'jane']
for name in names:
  email = name + '@gmail.com'
  print(email)</pre>

  <p>This program will print out emails of individual people, one per line. The following animation shows how Python executes this program.</p>

  <div class="figure">
    <img src="/img/intro-to-progr/for-cycle.gif" />
  </div>

  <p>As said above, a loop can contain an arbitrary block of commands so we can really go wild and put a condition into a FOR loop block.</p>

<pre>names = ['peter', 'paul', 'judith', 'jane']
for name in names:
  if len(name) <= 4:
    email = name + '@gmail.com'
  else:
    email = name + '@seznam.cz'
  print(email)</pre>

  <p>This explains basically everything that we need to know about the FOR loop for now. It may not seem so at the first sight, but by adding a loop into our programmer arsenal we have opened a Pandora's box full of possiblities of what we can do in our programs. But we've also opened a gate into the hell itself, because thanks to loops we can now solve more complex and difficult problems that will make us think really hard.</p>

  <p>Let's see how we could use a loop to sum all numbers in a list for example.</p>

<pre>s = 0
for num in numbers:
  s = s + num</pre>

  <p>Not that we actually need this loop, Python has a function called <code>sum()</code> which does exactly this. This example is more about showing that you can do all kinds of interesting things with loops.</p>
</%self:lesson>

<%self:exercises>
  <h2>Excercies</h2>
  
  <%self:exrc title="Iterating over a String">
    <ol>
      <li>Creata a program and store your entire name into a variabl called <var>name</var>. Use a <var>for</var> loop to write out each single letter of your name on a new line.</li>
      <li>Write a program that will go through the list of ratings of the play Teddys on the run and write out each rating on a new line.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Iterating over a List">
    <ol>
      <li>
        <p>Create a program called <var>passwords.py</var> an put the following code containing a list of password at the top of it</p>
<pre>
passwords = [
  'xyz101',
  'princess',
  'razor-blade',
  '1234',
  '12011986',
  'martin111',
  'sodoff',
  'hocuspocus',
  'georgie15',
  'christ-will-save-you'
  'ladybug',
  'fourfinefreshfishforyou'
]</pre>
      <li>Using a loop write out all the passwords on the screen, one per line.</li>
      <li>Modify the program so that it only prints secure passwords, that is only those that are longer than 8 characters.</li>
      <li>Further modify your program to only print passwords containing the dash sign '-'.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="More Complex Programs">
    <p>Create a new program called <var>loops02.py</var> and put the following list of months into it. Notice that it is a list of lists.</p>
<pre>
months = [
  ['January', 31],
  ['February', 28],
  ['March', 31],
  ['April', 30],
  ['May', 31],
  ['June', 30],
  ['July', 31],
  ['August', 31],
  ['September', 30],
  ['October', 31],
  ['November', 30],
  ['December', 31]
]</pre>

    <ol>
      <li>Using a loop go over the list and output names of the months, one per line.</li>
      <li>Using another loop output number of days in each month, one per line.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Plays">
    <p>The following contains list of all game plays shown in the Sore Thumb Theatre. Each play has its duration in minutes.</p>
<pre>games = [
  ['Ňadro na ňadru na nádru', 180],
  ['Attack of Plush Crocodiles', 95],
  ['Journey to the Cabbage Land', 128],
  ['Romance on a Romance na zdymadle', 144],
  ['Still Life wit an Alien', 135],
  ['Four slaps and a cupcake', 100],
  ['Power Cucumber', 165],
  ['Johnny Noir', 140],
  ['Pražská kavárna vrací úder', 130],
  ['Pět sester ve vratech', 111],
  ['Old Man and a Python', 187],
  ['Pink Disease', 210],
  ['Death in Live Stream', 265]
]</pre>

    <ol>
      <li>Using a loop go over the list and output names of all plays.</li>
      <li>Output names all plays longer than 120 minutes.</li>
      <li>Outout names of all plays alongside their duration in hours and minutes.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Average">
    <p>Write a loop that will go over a list of decimal numbers and calculate their average. Create the list of the numbers at the beginning of the program.</p>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>
  
  <%self:exrc title="The Biggest Number">
    <p>Write a loop that will iterate over a list of integers and will find the biggest one.</p>
  </%self:exrc>
</%self:exercises>

<%doc>
<div class="exercise">Prime Number Test</div>
<p>Write a program that will receive a number on the input and will check whether it's a prime number. Prime number is a number greater than one that is only divisible by one and itself (e.g. 5, 7, 11, 17).</p>

<div class="exercise">Prime Numbers</div>
<ol>
  <li>Modify the previous program to write out the first 20 primes.</li>
  <li>Further modify the program so that the number of primes to print is entered by the user.</li>
</ol>

<div class="exercise">Rabbit Farm</div>
<p>Using the <var>while</var> loop create the following assignment. The <em>Rabbit Dream</em> startup starts with two rabbits. It is known that if you leave rabbits to procreate their numbers will double every year. How many years will it take for the farm to have at least a thousand rabbits?</p>
</%doc>

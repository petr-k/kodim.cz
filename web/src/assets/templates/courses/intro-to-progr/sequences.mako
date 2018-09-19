<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Until now we we were only able to store a single value in a variable, for example a number or a string. However computers often need to work with more data than just a few numbers or strings.</p>
</%self:lesson>

<%self:exercises>
  <h2>Excercises</h2>
  
  <%self:exrc title="Strings as Sequences">
    <ol>
      <li>In Python console create a variable <var>name</var> and store you entire name in it. Try to output the third, fifth and seventh character of the string. Try what happens when you try to access a charecter on position that is beyond the end of the string.</li>
      <li>Password verification is sometimes done by asking only certain characters from the password. Write a program that has a password stored in it that the user has to enter. Then ask the user to input for example the second, fifth and seventh character of the password. Let the user enter only if they enter all these characters correctly.</li>
      <li>Modify the program <code>registration.py</code> so that in addition to asking for username it will also ask for their email address. Verify that the email address is valid, that is that is contains the at-sign, dot and is at least 5 characters long.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Lists">
    <p>Do this entire excercise in the Python command line.</p>
    <ol>
      <li>Create a list of integers, for example numbers of visitors on several subsequent plays.</li>
      <li>Create a list of decimal numbers, for example occupancy of the theatre during several subsequent plays.</li>
      <li>Create a list of strings, for example a list of names of several plays that the theatre plays. Save this list into the <var>games</var> variable. Store the second item in the list into some variable.</li>
      <li>Create a list of lists containing temperatures measured every day of the week. Each day we measure the temperature in the morning, midday and evening. Save this list to a variable called <var>temperatures</var> and ask what temperature was measured on Tuesday morning and friday midday.</li>
      <li>Save a list of ratings of the play Teddys on the run, that the play has received from different magazines into a <var>ratings</var> variable. The rating is always between 1 and 10. Afterwards append a rating from the Theatre Daily magazine.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done_en()}

  <h2>Bonuses</h2>
</%self:exercises>

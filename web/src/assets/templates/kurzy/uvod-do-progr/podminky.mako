<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>Do této chvíle všechny naše programy vypadaly jako sekvence příkazů vykonávané jeden za druhým a měly pouze jeden možná proběh. Pro komplikovanější programy ale budeme potřebovat umožnit, aby se některé části programu vykonaly jen za určitých <em>podmínek</em>, tedy aby se naše programy dokázaly rozhodovat a měnit svoje chování na základě zadaného vstupu od uživatele.</p>

  <div class="text-img-right">
    <p>Naše divadlo obsahuje některé lechtivé kusy s obsahem pouze pro dospělé. Na takové představení chceme pustit pouze uživatele starší 18ti let. Náš program tedy musí být schopný se podle zadaného věku rozhodnout, zda uživateli umožní koupit si lístek nebo nikoliv. Takový program by pak mohl vypadat například takto:</p>

    <img src="/img/intro-to-progr/adult-only.png" alt="Adult only" />
  </div>

<pre>if vek >= 18:
  print('Vítej ve světě slasti')
else:
  print('Odpal, holomku!')</pre>

  <h2>Bloky</h2>
  <p>Všimněte si, že některé řádky v naší podmínce jsou odsazené kousek doprava. Tímto poprvé narážíme na takzvané bloky kódu. Blok je způsob jak seskupit několik příkazů do jednoho celku. Takový celek pak může být součástí podmínky nebo, jak později uvidíme, například cyklu. Blok vždy začiná dvojtečkou na konci předchozího řádku. Tím říkáme k jaké kunstrukci (v našem případě <code>if</code>) náš blok příkazů patří.</p>

  <p>Odsazování bloků se nejčastěji provádí pomocí několika mezer. Mnoho programátorů preferuje čtyři mezery, někteří (jako já) preferují dvě mezery. Jsou i tací, kteří odsazují bloky pomocí jednoho tabulátoru. Podobně jako v případě jmen proměnných, opět zde přichází do hry různé programovací styly. Opět je to na jakímsi vašem estetickém citění. Já budu v tomto kurzu vždy doporučovat dvě mezery.</p>

  <p>Pokud si zvolíte konkrétní styl, je velice důležíté jej dodržovat. Pokud v rámci jednoho bloku budete míchat mezery a tabulátory, Python vašemu kódu nebude rozumět a bude vyhazovat chyby. Pokud budete jeden blok odsazovat pomocí tabulátorů a jeden pomocí mezer, tak vám to Python odpustí, ale je to strašlivá prasárna, takže to opravdu nedělejte. </p>

  <h2>Podmínky s více větvemi</h2>
  <p>Podobně jako u filmů tak i u divadelních představení bychom mohli chtít jemnější rozdělení přístupnosti nějakého představení. Můžeme například mít představení nevhodné vyloženě pro malé děti, zatímco teenageri jsou v pohodě. Budeme tady potřebovat podmínku s více větvemi:</p>

<pre>if vek < 6:
  print('Předkškolák')
elif vek < 15:
  print('Školák')
elif vek < 18:
  print('Mladistvý')
else:
  print('Dospělý')</pre>

  <h2>Porovnávací operátory</h2>
  <p>V podmínkách jsme zatím používali operátory menší než <code>&lt;</code> a větší nebo rovno <code>&gt;=</code>. Zde je přehled všech ostatních porovnávacích operátorů</p>

  <ul>
    <li>rovno: <strong>==</strong></li>
    <li>nerovno: <strong>!=</strong></li>
    <li>větší: <strong>&gt;</strong></li>
    <li>větší nebo rovno: <strong>&gt;=</strong></li>
    <li>menší: <strong>&lt;</strong></li>
    <li>menší nebo rovno: <strong>&lt;=</strong></li>
  </ul>

  <p>Všimněte si, že rovnost se tesuje pomocí dvou rovná se. Je to proto, že jedno rovná se už pužíváme k něčemu jinému - k přiřazení hodnoty do proměnné.</p>
</%self:lesson>

<%self:exercises>

  <h2>Cvičení</h2>

  <%self:exrc title="Jednoduché podmínky">
    <ol>
      <li>
        <p>Založte si program <code>prihlaseni.py</code>. V tomto nechte uživatele zadat svoje uživatelské jméno a poté heslo. Pokud se heslo shoduje s heslem <em>simsalabim</em> vypište na výstup</p>
        
        <pre>Smíš vstoupit</pre>
        
        <p>Program spusťte na konzoli a vyzkoušejte, že dělá co má.</p>
      </li>
      <li>
        <p>Upravte tento program tak, by vypsal </p>

        <pre>Vstup nepovolen</pre>
        
        <p>pokud uživatel zadá špatné heslo.</p>
      </li>
      <li>
        <p>Upravte dále program tak, že pokud uživatel zadá správné heslo, program se ho ještě zeptá na věk a pustí jej dál pouze pokud je starší 18ti let. Pokud uživatel zadá heslo špatně, už se ho na věk neptejte a ukončete program voláním fuknce <code>exit()</code>.</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Složitější podmínky">
    <p>Založte si program <code>tyden.py</code>. V tomto nechte uživatele zadat pořadové číslo dne v týdnu. Na výstup vypište jméno dne s tímto číslem. Například</p>
    <pre>3 - středa</pre>
    <p>Pokud uživatel zadá číslo, které není mezi 1 a 7, vypište</p>
    <pre>Neplatný vstup</pre>
    <p>Dejte dobrý pozor na konverzi hodnot, abyste měli číslo tam, kde chcete číslo a řetězec tam, kde chcete mít řetězec.</p>
  </%self:exrc>

  <%self:exrc title="Cena vstupenky">
    <p>A nyní opět pokračujeme v našem rezervačním systému.</p>
    <ol>
      <li>Program <code>vstupenky01.py</code>, který jste napsali v předchozí fázi, si uložte jako <code>vstupenky02.py</code>, abychom ho mohli dále rozšířit o výpočet ceny vstupenky.</li>
      <li>Jakmile máte v programu načtený věk uživatele, vytvořte si proměnnou <var>plnaCena</var>, do které uložte hodnotu 12.</li>
      <li>Vytvořte podmínku, která do proměnné <var>cena</var> uloží cenu spočítanou podle věku uživatele, viz zadání. Nezapomeňte na zaokrouhlování, ať nám cena vyjde v celých centech.</li>
      <li>Nakonec spočtenou cenu vypište s nějakou hezkou zprávou na výstup.</li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Registrace">
    <p>Založte si program <code>registrace.py</code>. Program nechá uživatele, aby si zvolil uživatelské jméno a heslo. Heslo jej nechejte zadat dvakrát a ověřte, že jej uživatel zadal dvakrát stejně. V opačném případě vypište varování, že hesla nejsou stejná. Při prvním zadávání ověřte, že heslo je bezpečné, což v tomto případě znamná, že je delší než 8 znaků. </p>
  </%self:exrc>

  <%self:exrc title="Ruleta">
    <p>Na obrázku vidíte rozložení čísel na klasické Francouzské ruletě. Ruleta obsahuje čísla 0 - 36. Každé číslo s výjimkou nuly je buď sudé nebo liché a zároveň červené nebo černé. Pro čísla 1 až 10 a 19 až 28 platí, že lichá čísla jsou červená a sudá jsou černá. Pro zbytek platí obrácené pravidlo, tedy lichá jsou černá a sudá červená. Nula není ani lichá ani sudá, ani černá ani červená.</p>

    <div class="text-center">
      <img src="/img/intro-to-progr/roulette.png"/>
    </div>

    <p>Napište program, kterému uživatel zadá číslo a program odpoví jestli jde o číslo sudé nebo liché, černé nebo červené, nebo je to nula.</p>
  </%self:exrc>

  <%self:exrc title="Přestupný rok">
    <p>Napište program, který po zadání kalendářního roku vypíše, zda jde o rok přestupný, či nikoliv. Letopočet je přestupný, pokud je dělitelný čtyřmi. Roky, které jsou dělitelné 100 jsou ovšem přestupné pouze tehdy, jsou-li zároveň dělitelné 400.</p>
  </%self:exrc>
</%self:exercises>

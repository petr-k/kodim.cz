<%inherit file="/course-chapter.mako"/>

<%self:lesson>
	<p>V našich programech budeme často potřebovat pracovat s různě strukturovanými daty, které obsahují mnoho druhů hodnot. Představme si například, že zpracováváme seznam absolventů nějakého kurzu. Každý absolvent má svoje jméno, příjmení (což jsou řetězce), rok absolvování kurzu (celé číslo), výslednou docházku v procentech (desetinné číslo) a informaci o tom, zda prospěl s vyznamenáním (pravdivostní hodnota).</p>

	<p>Jelikož už známe seznamy, mohli bychom zkusit reprezenovat absolventa třeba takto:</p>

<pre>absolvent = ['Petr', 'Roman', 2017, 0.95, True]</pre>

	<p>Hned ale vidíme, že z takového seznamu není úplně zřejmé, co která hodnota znamená. Musíme si pamatovat, že na indexu 0 je křestní jméno, na indexu 3 docházka známka apod. Mnohem pohodlnější by bylo, kdybychom mohli jednotlivé hodnoty místo indexování přímo pojmenovat. A přesně k tomuto účelu máme v Pythonu takzvané <em>slovníky</em>.</p>
	
	<h2>Slovníky</h2>
	
	<p>Slovník umožňuje pojmenovat hodnoty v nějaké datové struktuře tak, abychom pomocí těchto jmen mohli k hodnotám poté přistupovat. Našeho absolventa bychom pomocí slovníku reprezentovali takto</p>

<pre>absolvent = {
  'jmeno': 'Petr',
  'prijmeni': 'Roman',
  'rok': 2017,
  'dochazka': 0.95,
	'vyznamenani': True
}</pre>

	<p>Pokud pak chceme získat například jméno či docházku našeho absolventa, píšeme</p>

<pre>&gt;&gt;&gt; absolvent['jmeno']
'Petr'
&gt;&gt;&gt; absolvent['dochazka']
0.95</pre>

	<p>První důležitá věc ohledně slovníků je, že slovníky jsou opět hodnoty jako každé jiné. Mohou proto být součástí seznamů. Můžeme tedy snadno vyrobit seznam absolventů našeho kurzu:</p>

<pre>absolventi = [
  {'jmeno': 'Petr', 'prijmeni': 'Roman', 'rok': 2017, 'dochazka': 0.95, 'vyznamenani': True},
  {'jmeno': 'Jana', 'prijmeni': 'Kočanská', 'rok': 2015, 'dochazka': 0.92, 'vyznamenani': True},
  {'jmeno': 'Eva', 'prijmeni': 'Horká', 'rok': 2014, 'dochazka': 0.85, 'vyznamenani': False},
  {'jmeno': 'Ivo', 'prijmeni': 'Roubeník', 'rok': 2017, 'dochazka': 0.75, 'vyznamenani': False}
]</pre>

	<p>Kdybychom pak chtěli získat například příjmení absolventa na indexu 2, psali bychom </p>

	<div class="verbatim">
<pre>&gt;&gt;&gt; absolventi[2]['prijmeni']
'Horká'</pre>
	</div>

	<p>Nebo bychom mohli projít všechny absolventy a spočítat jejich průměrnou docházku na kurz.</p>

<pre>&gt;&gt;&gt; from statistics import mean
&gt;&gt;&gt; mean([ab['doochazka'] for ab in absolventi])
1.425</pre>

	<h2>Externí moduly a balíčky</h2>
	
</%self:lesson>
# encoding: utf-8
require 'date'

Training.destroy_all
training1 = Training.create \
  :title => %(Practicing Coaching training),
  :description => <<-DESCRIPTION,
Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.

Ovaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su Stella Saratsi and Marco Vlaming.
  DESCRIPTION
  :begins_on => Date.parse("02/01/2012"),
  :ends_on   => Date.parse("08/01/2012"),
  :participating_countries => [],
  :additional_info => %("Dodatne informacije možete saznati i na [www.oldevechte.nl](www.oldevechte.nl/en)"),
  :city => "Ommen",
  :country => "NL"

training1.testimonials.create \
  :body => <<-BODY,
Ne sjećam se točno kada sam prvi put saznala za Synergy, ali se sjećam da mi se odmah uistinu svidjelo. Jednotjedni Coaching trening u manjem mjestu Ommen, Nizozemska.

Imala sam pozitivan osjećaj i visoka očekivanja... i bilo mi je drago kada sam shvatila da je osjećaj bio dobar te da je cjelokupno iskustvo nadmašilo moja očekivanja.

Razina gostoprimstva je bila sličnija onoj kada posjećujem prijatelje. Stvarali su ju ljudi, treneri te opća filozofija Synergy Grupe.

Neformalni dio je ukazivao na njihovu posvećenost koja je, ako usporedim sa sličnim ikustvima, uistinu rijetko na toj razini iskrenosti. Ljepota na dalje je bilo prenošenje te posvećenosti na formalni dio, sam trening gdje se uistinu pazilo da ju svi sudionici osjećaju.

Posljedično, svi su se osjećali ugodno, a to je omogućilo djeljenje i iskrenost -- bitan faktor koji je pridonijeo cjelokupnj kvaliteti treninga.

Sadržaj i teorija su bili sažeti, jednostavni, specifični i vrlo praktični. Koncepti su prezentirani taman koliko je dovoljno da se zahvati poanta, a zatim vježbani do razine potpunog razumijevanja i ovladavanj pojedinom tehnikom.

Daljnja divna stvar je bila razmjena iskustva s dugim sudionicima. S obzirom na kontekst, bila je intenzivna. Osjećaj ugodnosti i otvorenosti za otvoriti se i uključiti cijelog sebe te prihvatiti drugog bili su prisutni od samog početka. Raznolikost naših pozadina -- geografski, kulturalno, obrazovno, profesionalno te osobno – bila je bogata. To je bilo super!

Ljudi sa svih strana koji rade mnogo zanimlljivih stvari i tako su razičitih osobnosti -- bili su tamo s istim ciljem -- narasti kao osoba, poboljšati sebe i pomoći drugima da učine isto.
  BODY
  :author => "Vanja Varga"

training2 = Training.create \
  :title => %("Unique & United", osnovni Synergy trening),
  :country => "CZ",
  :city    => "Naše Kamenka",
  :begins_on => Date.parse("15/10/2011"),
  :ends_on   => Date.parse("23/10/2011")

training2.testimonials.create \
  :body => <<-BODY,
"DE ČEŠKIBUS"

Osnovni Synergy Trening “Unique & United” jest za mene uistinu divno iskustvo.

Upoznala sam sjajne mlade ljude iz Češke, Mađarske, Bugarske, Rumunjske i Turske koji su me oduševili svojom aktivnošću, poletom, iskrenošću, podrškom, hrabrošću te životnom energijom i potakli me da i ja budem aktivnija.

Sam trening naveo me da razmišljam o svojoj ulozi u društvu i utjecaju na druge.

Istaknuo je činjenicu da svatko od nas ima neku supermoć, te da zajedno možemo napraviti stvari iznad svih očekivanja.

Također, definiranjem određenih koraka pojedinih psiholoških i socioloških procesa uobičajna zbrka u mojoj glavi postala je malko više strukturirana. Vidim stvari,događaje ponešto jasnije, pa mi je lakše baratati s njima. :) Upoznala sam se s određenim psihološkim alatima koje mogu koristiti kad mi zatrebaju. Uz sve to, trening jača samopouzdanje i izuzetno je zabavan.

Motivira ljude da iskoriste svoj potencijal i uživaju u svemu što im život pruža. Hvala Syncro. :)
  BODY
  :author => "Jelena Radošević"

training3 = Training.create \
  :title => %(Trening POWER ON: from Virtual to Public Spaces),
  :country => "NL",
  :city => "Ommen",
  :begins_on => Date.parse("25/02/2012"),
  :ends_on   => Date.parse("03/03/2012")

training3.testimonials.create \
  :body => <<-BODY,
Synergy Croatia omogućio mi je sudjelovanje na na projektu Power On -- from virtual to public space. Cilj projekta je promjeniti neki javni prostor u mjestu u kojem živimo. U okviru projekta,koji inače traje 7 mjeseci, proveli smo tjedan dana u Ommenu, Nizozemska. Imam osjećaj da sam u tih tjedan dana naučila više nego u par godina akademskog obrazovanja! Osim tehničkih stvari koje smo naučili, kao što su osnove novinarstva, propagande i medija te kako pokrenuti projekt u tih jedan dana sam shvatila koliko je jednostavno pokrenuti projekt na lokalnoj razini, promjeniti neki element u zajednici u kojoj živimo i pridonijeti društvu. Također, timski rad osnova je svih vježbi i radionica koje smo imalu u Ommenu. Nije to tako jednostavno kao što se čini :). Posebno mi se svidio način na koji funkcionira zajednica Olde Vechte u Ommenu, i tim voditelja projekta. U svakom slučaju, jedno od boljih iskustava u životu!
  BODY
  :author => "Maja Mikeš"

training4 = Training.create \
  :title => %("Big peace comes from small pieces", osnovni Synergy trening),
  :country => "NL",
  :city => "Ommen",
  :begins_on => Date.parse("25/04/2010"),
  :ends_on   => Date.parse("09/05/2010")

training4.testimonials.create \
  :body => <<-BODY,
Sa Synergy treninzima upoznala sam se sasvim slučajno, preko prijateljice. Mislila sam kako će to biti dobra kombinacija putovanja i druženja. Upoznavanje različitih kultura, navika i svjetonazora samo su jedna od pozitivnih popratnih pojava. Meni osobno, Synergy treninzi pomogli su da se suočim sama sa sobom i stvarima koje uporno ponavljam a ne donose mi rezultate. Pokazali su mi kako da učim od konstruktivne kritike umjesto da se vrijeđam i kako pogrešne odluka ne postoje: u redu je što god odlučim, jer postupam najbolje što mogu u danom trenutku sa znanjem koje sam dosad skupila. Sada znam da sam slobodna kreirati svoj vlastiti Put te da uz malo hrabrosti i mašte mogu na njemu stvoriti što god poželim.
  BODY
  :author => "Maja Lončar"

training5 = Training.create \
  :title => %("Event Wise", osnovni Synergy Trening),
  :country => "NL",
  :city => "Ommen",
  :begins_on => Date.parse("06/10/2010"),
  :ends_on   => Date.parse("11/10/2010")

training5.testimonials.create \
  :body => <<-BODY,
To mi je bio jedno od boljih iskustava u životu... Kolko zbog ljudi koje sam tamo upoznao: svi otvoreni, spremni pomoć jedni drugima, ali i sebi naravno.

Ako se stvarno otvoriš za ono što se tamo nudi i ako počneš na neke stvari malo drugačije gledati ili čak razmišljati o nekim stvarima o kojima prije uopće nisi ni mislio da budeš ili se jednostavno nisu prije činile toliko bitnima, može ti se okrenuti cijeli svijet. Pogledaš na sebe iz nekog drugog kuta i budeš korak bliže "sebi", a naučiš dosta o sebi kroz povratnu informaciju drugih.
  BODY
  :author => "Siniša Pasanec"

Training.create \
  :title => %("Value in youth", osnovni Synergy trening),
  :description => <<-DESCRIPTION,
"Value in youth" je osnovni Synergy trening u kojem će naglasak biti na zapošljivosti mladih. Trenutna situacija pri traženju posla je vrlo izazovna, stoga je ovaj trening namijenjen mladima koji traže ili razmišljaju o promjeni posla, žele započeti vlastiti posao ili jednostavno žele poboljšati svoje šanse na tržištu rada. Kroz trening sudionici će raditi na osvješćivanju i poboljšanju svojih vještina, kompetencija i mogućnosti koje bi im mogle pomoći pri zapošljavanju. U sklopu razne radionica i aktivnosti sudionici će moći uvidjeti koji su njihovi interesi, ciljevi, vrijednosti i motivacija u radu, kako reagiraju u nepredviđenim situacijama, kako djeluju kad moraju  surađivati s drugima, na koji način sklapaju dogovore i organiziraju vrijeme.

Cilj je olakšavanje mladima uključivanje u tržište rada, te će im to biti i omogućeno kroz pisanje kvalitetnog životopisa, simulaciju intervjua za posao te provedeng dana na pravom radnom mjestu.
  DESCRIPTION
  :begins_on => Date.parse("24/03/2012"),
  :ends_on   => Date.parse("03/04/2012"),
  :participating_countries => %w[ES SI HR RO HU],
  :additional_info => <<-INFO,
* kotizacija iznosi 50 eura
* hrana, smještaj i 70% putnih troškova su pokriveni
  INFO
  :city => "Holloko",
  :country => "HU",
  :minimum_age => 17,
  :maximum_age => 25

Training.create \
  :title => %("Show Your Life", trening za trenere),
  :begins_on => Date.parse("21/10/2012"),
  :ends_on   => Date.parse("01/11/2012"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("All different, all equal", međunarodna razmjena o jednakosti i socijalnoj inkluziji gluhih),
  :begins_on => Date.parse("21/10/2012"),
  :ends_on   => Date.parse("01/11/2012"),
  :city => "Thessaloniki",
  :country => "GR"

Training.create \
  :title => %("LoGlo -- Local action Global reaction!", trening o ekološkoj svjesnosti i održivim ponašanjima),
  :begins_on => Date.parse("21/10/2012"),
  :ends_on   => Date.parse("01/11/2012"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("The challenges and opportunities of sustainable development", seminar o održivom razvoju),
  :begins_on => Date.parse("05/09/2012"),
  :ends_on   => Date.parse("12/09/2012"),
  :city => "Gloucestershire",
  :country => "GB"

Training.create \
  :title => %("Value in Youth", osnovni Synergy trening),
  :begins_on => Date.parse("19/08/2012"),
  :ends_on   => Date.parse("30/08/2012"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("Imagine the Beat", kinematografija, kazalište i media trening),
  :begins_on => Date.parse("19/08/2012"),
  :ends_on   => Date.parse("30/08/2012"),
  :city => "Ommen",
  :country => "NL"

Training.create \
  :title => %("Compose Your Competences", osnovni Synergy trening),
  :begins_on => Date.parse("28/07/2012"),
  :ends_on   => Date.parse("07/08/2012"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("Fire(works)", YIA projekt kratkoročne volonterske službe),
  :begins_on => Date.parse("29/06/2011"),
  :ends_on   => Date.parse("28/08/2011"),
  :city => "Ommen",
  :country => "NL"

Training.create \
  :title => %("Guide Your Life", osnovni Synergy trening),
  :begins_on => Date.parse("01/05/2012"),
  :ends_on   => Date.parse("13/05/2012"),
  :city => "Ommen",
  :country => "NL"

Training.create \
  :title => %("Value of Diversity: Turning the Key of Inclusion", coaching trening),
  :begins_on => Date.parse("12/03/2012"),
  :ends_on   => Date.parse("18/03/2012"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("POWER ON: From Virtual to Public space", audio-visual & media trening),
  :begins_on => Date.parse("12/03/2012"),
  :ends_on   => Date.parse("18/03/2012"),
  :city => "Nizozemska",
  :country => "NL"

Training.create \
  :title => %("Key Questions", osnovni Synergy trening),
  :begins_on => Date.parse("21/08/2011"),
  :ends_on   => Date.parse("02/09/2011"),
  :city => "Holloko",
  :country => "HU"

Training.create \
  :title => %("Out and About", YIA projekt kratkoročne volonterske službe),
  :begins_on => Date.parse("22/07/2011"),
  :ends_on   => Date.parse("21/08/2011"),
  :city => "Ommen",
  :country => "NL"

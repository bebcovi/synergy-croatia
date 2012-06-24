# encoding: utf-8
require 'date'

Training.destroy_all

training1 = Training.create \
  :title => %(Practicing Coaching training),
  :description => <<-DESCRIPTION,
Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.

Ovaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su Stella Saratsi and Marco Vlaming.
  DESCRIPTION
  :begins_on => Date.parse("2nd Jan 2012"),
  :ends_on   => Date.parse("8th Jan 2012"),
  :participating_countries => [],
  :infoletter_url => "http://synergy-croatia.com/wp-content/uploads/2012/01/Info-letter-Practicing-Coaching-Training-10th-to-16th-March-2012.pdf",
  :participation_form_url => "#",
  :additional_info => %("Dodatne informacije možete saznati i na [www.oldevechte.nl](www.oldevechte.nl)"),
  :city => "Ommen",
  :country => "NL"

training1.testimonials.create \
  :body => <<-BODY,
Ne sjećam se točno kada sam prvi put saznala za Synergy, ali se sjećam da mi se odmah uistinu svidjelo. Jednotjedni Coaching trening u manjem mjestu Ommen, Nizozemska.

Imala sam pozitivan osjećaj i visoka očekivanja… i bilo mi je drago kada sam shvatila da je osjećaj bio dobar te da je cjelokupno iskustvo nadmašilo moja očekivanja.

Razina gostoprimstva je bila sličnija onoj kada posjećujem prijatelje. Stvarali su ju ljudi, treneri te opća filozofija Synegy Grupe.

Neformalni dio je ukazivao na njihovu posvećenost koja je, ako usporedim sa sličnim ikustvima, uistinu rijetko na toj razini iskrenosti. Ljepota na dalje je bilo prenošenje te posvećenosti na formalni dio, sam trening gdje se uistinu pazilo da ju svi sudionici osjećaju.

Posljedično, svi su se osjećali ugodno , a to je omogućilo djeljenje i iskrenost – bitan faktor koji je pridonijeo cjelokupnj kvaliteti treninga.

Sadržaj i teorija su bili sažeti, jednostavni, specifični i vrlo praktični. Koncepti su prezentirani taman koliko je dovoljno da se zahvati poanta, a zatim vježbani do razine potpunog razumijevanja i ovladavanj pojedinom tehnikom.

Daljnja divna stvar je bila razmjena iskustva s dugim sudionicima. S obzirom na kontekst, bila je intenzivna. Osjećaj ugodnosti i otvorenosti za otvoriti se i uključiti cijelog sebe te prihvatiti drugog bili su prisutni od samog početka. Raznolikost naših pozadina – geografski, kulturalno, obrazovno, profesionalno te osobno – bila je bogata. To je bilo super!

Ljudi sa svih strana koji rade mnogo zanimlljivih stvari i tako su razičitih osobnosti – bili su tamo s istim ciljem – narasti kao osoba, poboljšati sebe i pomoći drugima da učine isto.
  BODY
  :author => "Vanja Varga"

training2 = Training.create \
  :title => %(Osnovni Synergy trening "Unique & United"),
  :country => "CZ",
  :city    => "Kamenka",
  :begins_on => Date.parse("15th September 2011"),
  :ends_on   => Date.parse("23th September 2011")

training2.testimonials.create \
  :body => <<-BODY,
“DE ČEŠKIBUS”

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
  :begins_on => Date.parse("25th Feb 2012"),
  :ends_on   => Date.parse("3rd Mar 2012")

training3.testimonials.create \
  :body => <<-BODY,
Synergy Croatia omogućio mi je sudjelovanje na na projektu Power On – from virtual to public space. Cilj projekta je promjeniti neki javni prostor u mjestu u kojem živimo. U okviru projekta,koji inače traje 7 mjeseci, proveli smo tjedan dana u Ommenu, Nizozemska. Imam osjećaj da sam u tih tjedan dana naučila više nego u par godina akademskog obrazovanja! Osim tehničkih stvari koje smo naučili, kao što su osnove novinarstva, propagande i medija te kako pokrenuti projekt u tih jedan dana sam shvatila koliko je jednostavno pokrenuti projekt na lokalnoj razini, promjeniti neki element u zajednici u kojoj živimo i pridonijeti društvu. Također, timski rad osnova je svih vježbi i radionica koje smo imalu u Ommenu. Nije to tako jednostavno kao što se čini J. Posebno mi se svidio način na koji funkcionira zajednica Olde Vechte u Ommenu, i tim voditelja projekta. U svakom slučaju, jedno od boljih iskustava u životu!
  BODY
  :author => "Maja Mikeš"

training4 = Training.create \
  :title => %(Osnovni Synergy trening “Big peace comes from small pieces”),
  :country => "NL",
  :begins_on => Date.parse("25th Apr 2010"),
  :ends_on   => Date.parse("9th May 2010")

training4.testimonials.create \
  :body => <<-BODY,
Sa Synergy treninzima upoznala sam se sasvim slučajno, preko prijateljice. Mislila sam kako će to biti dobra kombinacija putovanja i druženja. Upoznavanje različitih kultura, navika i svjetonazora samo su jedna od pozitivnih popratnih pojava. Meni osobno, Synergy treninzi pomogli su da se suočim sama sa sobom i stvarima koje uporno ponavljam a ne donose mi rezultate. Pokazali su mi kako da učim od konstruktivne kritike umjesto da se vrijeđam i kako pogrešne odluka ne postoje: u redu je što god odlučim, jer postupam najbolje što mogu u danom trenutku sa znanjem koje sam dosad skupila. Sada znam da sam slobodna kreirati svoj vlastiti Put te da uz malo hrabrosti i mašte mogu na njemu stvoriti što god poželim.
  BODY
  :author => "Maja Lončar"

training5 = Training.create \
  :title => %(Osnovni Synergy Trening “Event Wise”),
  :country => "NL",
  :begins_on => Date.parse("6th Sep 2010"),
  :ends_on   => Date.parse("11th Sep 2010")

training5.testimonials.create \
  :body => <<-BODY,
To mi je bio jedno od boljih iskustava u životu… Kolko zbog ljudi koje sam tamo upoznao: svi otvoreni, spremni pomoć jedni drugima, ali i sebi naravno.

Ako se stvarno otvoriš za ono što se tamo nudi i ako počneš na neke stvari malo drugačije gledati ili čak razmišljati o nekim stvarima o kojima prije uopće nisi ni mislio da budeš ili se jednostavno nisu prije činile toliko bitnima, može ti se okrenuti cijeli svijet. Pogledaš na sebe iz nekog drugog kuta i budeš korak bliže “sebi”, a naučiš dosta o sebi kroz povratnu informaciju drugih.
  BODY
  :author => "Siniša Pasanec"

Training.create \
  :title => %(Basic Synergy trening "Value in youth"),
  :description => <<-DESCRIPTION,
"Value in youth" je osnovni Synergy trening u kojem će naglasak biti na zapošljivosti mladih. Trenutna situacija pri traženju posla je vrlo izazovna, stoga je ovaj trening namijenjen mladima koji traže ili razmišljaju o promjeni posla, žele započeti vlastiti posao ili jednostavno žele poboljšati svoje šanse na tržištu rada. Kroz trening sudionici će raditi na osvješćivanju i poboljšanju svojih vještina, kompetencija i mogućnosti koje bi im mogle pomoći pri zapošljavanju. U sklopu razne radionica i aktivnosti sudionici će moći uvidjeti koji su njihovi interesi, ciljevi, vrijednosti i motivacija u radu, kako reagiraju u nepredviđenim situacijama, kako djeluju kad moraju  surađivati s drugima, na koji način sklapaju dogovore i organiziraju vrijeme.

Cilj je olakšavanje mladima uključivanje u tržište rada, te će im to biti i omogućeno kroz pisanje kvalitetnog životopisa, simulaciju intervjua za posao te provedeng dana na pravom radnom mjestu.
  DESCRIPTION
  :begins_on => Date.parse("24th March 2012"),
  :ends_on   => Date.parse("3rd April 2012"),
  :participating_countries => %w[ES SI HR RO HU], # Španjolska, Slovenija, Hrvatska, Rumunjska i Mađarska
  :infoletter_url => "http://www.egyesek.hu/images/text/viy_inform.pdf",
  :participation_form_url => "http://www.google.com/url?q=http%3A%2F%2Fwww.facebook.com%2Fl.php%3Fu%3Dhttp%253A%252F%252Fwww.egyesek.hu%252Fimages%252Ftext%252Fviy_app.doc%26h%3DcAQHoxmLfAQF_XWG7K-vmEJdcwQlE5qzGojzqDLQItamtqw&sa=D&sntz=1&usg=AFQjCNHA6LzibHb5dhKxEPDAK23yrKbsnQ",
  :additional_info => <<-INFO,
* kotizacija iznosi 50 eura
* hrana, smještaj i 70% putnih troškova su pokriveni
  INFO
  :city => "Holloko",
  :country => "HU",
  :minimum_age => 17,
  :maximum_age => 25

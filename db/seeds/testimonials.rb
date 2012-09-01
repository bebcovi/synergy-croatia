# encoding: utf-8

project = Category.find_by_name_en("Practicing Coaching training").projects.first
project.testimonials.create!(
  author: "Vanja Varga",
  content_hr: <<-CONTENT
Ne sjećam se točno kada sam prvi put saznala za Synergy, ali se sjećam da mi se odmah uistinu svidjelo. Jednotjedni Coaching trening u manjem mjestu Ommen, Nizozemska.

Imala sam pozitivan osjećaj i visoka očekivanja... i bilo mi je drago kada sam shvatila da je osjećaj bio dobar te da je cjelokupno iskustvo nadmašilo moja očekivanja.

Razina gostoprimstva je bila sličnija onoj kada posjećujem prijatelje. Stvarali su ju ljudi, treneri te opća filozofija Synergy Grupe.

Neformalni dio je ukazivao na njihovu posvećenost koja je, ako usporedim sa sličnim ikustvima, uistinu rijetko na toj razini iskrenosti. Ljepota na dalje je bilo prenošenje te posvećenosti na formalni dio, sam trening gdje se uistinu pazilo da ju svi sudionici osjećaju.

Posljedično, svi su se osjećali ugodno, a to je omogućilo djeljenje i iskrenost -- bitan faktor koji je pridonijeo cjelokupnj kvaliteti treninga.

Sadržaj i teorija su bili sažeti, jednostavni, specifični i vrlo praktični. Koncepti su prezentirani taman koliko je dovoljno da se zahvati poanta, a zatim vježbani do razine potpunog razumijevanja i ovladavanj pojedinom tehnikom.

Daljnja divna stvar je bila razmjena iskustva s dugim sudionicima. S obzirom na kontekst, bila je intenzivna. Osjećaj ugodnosti i otvorenosti za otvoriti se i uključiti cijelog sebe te prihvatiti drugog bili su prisutni od samog početka. Raznolikost naših pozadina -- geografski, kulturalno, obrazovno, profesionalno te osobno – bila je bogata. To je bilo super!

Ljudi sa svih strana koji rade mnogo zanimlljivih stvari i tako su razičitih osobnosti -- bili su tamo s istim ciljem -- narasti kao osoba, poboljšati sebe i pomoći drugima da učine isto.
  CONTENT
)

project = Project.find_by_name("Unique & United")
project.testimonials.create!(
  author: "Jelena Radošević",
  content_hr: <<-CONTENT
"DE ČEŠKIBUS"

Osnovni Synergy Trening “Unique & United” jest za mene uistinu divno iskustvo.

Upoznala sam sjajne mlade ljude iz Češke, Mađarske, Bugarske, Rumunjske i Turske koji su me oduševili svojom aktivnošću, poletom, iskrenošću, podrškom, hrabrošću te životnom energijom i potakli me da i ja budem aktivnija.

Sam trening naveo me da razmišljam o svojoj ulozi u društvu i utjecaju na druge.

Istaknuo je činjenicu da svatko od nas ima neku supermoć, te da zajedno možemo napraviti stvari iznad svih očekivanja.

Također, definiranjem određenih koraka pojedinih psiholoških i socioloških procesa uobičajna zbrka u mojoj glavi postala je malko više strukturirana. Vidim stvari,događaje ponešto jasnije, pa mi je lakše baratati s njima. :) Upoznala sam se s određenim psihološkim alatima koje mogu koristiti kad mi zatrebaju. Uz sve to, trening jača samopouzdanje i izuzetno je zabavan.

Motivira ljude da iskoriste svoj potencijal i uživaju u svemu što im život pruža. Hvala Syncro. :)
  CONTENT
)

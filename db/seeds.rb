# encoding: utf-8
require 'date'

Training.delete_all

Training.create \
  :title => %("Practicing Coaching training"),
  :description => <<-DESCRIPTION,
Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.

Ovaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su Stella Saratsi and Marco Vlaming.
  DESCRIPTION
  :begins_on => Date.parse("4th May 2012"),
  :ends_on => Date.parse("10th May 2012"),
  :participating_countries => [],
  :infoletter_url => "http://synergy-croatia.com/wp-content/uploads/2012/01/Info-letter-Practicing-Coaching-Training-10th-to-16th-March-2012.pdf",
  :participation_form_url => "#",
  :additional_info => %("Dodatne informacije možete saznati i na [www.oldevechte.nl](www.oldevechte.nl)"),
  :city => "Ommen",
  :country => "NL",
  :minimum_age => nil,
  :maximum_age => nil

Training.create \
  :title => %(Basic Synergy trening "Value in youth"),
  :description => <<-DESCRIPTION,
"Value in youth" je osnovni Synergy trening u kojem će naglasak biti na zapošljivosti mladih. Trenutna situacija pri traženju posla je vrlo izazovna, stoga je ovaj trening namijenjen mladima koji traže ili razmišljaju o promjeni posla, žele započeti vlastiti posao ili jednostavno žele poboljšati svoje šanse na tržištu rada. Kroz trening sudionici će raditi na osvješćivanju i poboljšanju svojih vještina, kompetencija i mogućnosti koje bi im mogle pomoći pri zapošljavanju. U sklopu razne radionica i aktivnosti sudionici će moći uvidjeti koji su njihovi interesi, ciljevi, vrijednosti i motivacija u radu, kako reagiraju u nepredviđenim situacijama, kako djeluju kad moraju  surađivati s drugima, na koji način sklapaju dogovore i organiziraju vrijeme.

Cilj je olakšavanje mladima uključivanje u tržište rada, te će im to biti i omogućeno kroz pisanje kvalitetnog životopisa, simulaciju intervjua za posao te provedeng dana na pravom radnom mjestu.
  DESCRIPTION
  :begins_on => Date.parse("24th March 2012"),
  :ends_on => Date.parse("3rd April 2012"),
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

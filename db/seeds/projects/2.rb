# encoding: utf-8

category = Category.find_by_name_en("Youth Exchange")
category.projects.create!(
  name: "All different, All equal",
  description_hr: <<-DESCRIPTION,
## O čemu se radi?

Međunarodna razmjena mladih ”All different, all equal”,  okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja. Stoga, ako se volite družiti, putovati, upoznati nove ljude, te usput naučiti nešto novo o drugim kulturama, ovaj put imate priliku upoznati Grčku, naučiti znakovni jezik, upoznati i poigrati se s vlastitim predrasudama, te se malo bogatiji vratiti doma.

## Kada i gdje?

Razmjena se odvija u Thessaloniki, Grčka, od 28.9. do 4.10.2012.

## Tko se može prijaviti?

Iz Hrvatske putuje 6 mladih u dobi od 18 – 30 godina.

## Troškovi

Projekt je sufinanciran sredstvima iz EU, te je pokriveno 100% troškova hrane, smještaja i razmjene, te 70% putnih troškova. Sudionici plaćaju 30% putnih troškova, putno osiguranje (opcionalno), te 100 kn prilikom prijave za administrativne troškove u Hrvatskoj.

## Želim saznati više…

Za dodatne informacije možete pogledati priloženi infoletter. Ako imate bilo kakvih pitanja, slobodno nas kontaktirajte na <synergy@synergy-croatia.com>.

## Prijava

Ako se želite prijaviti, preuzmite priloženi obrazac, ispunite ga i pošaljite na gore navedenu email adresu. Rok za prijavu: 5.9. 2012.
  DESCRIPTION
  summary_hr: %(Međunarodna razmjena mladih "All different, all equal", okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja.),
  minimum_age: 18,
  maximum_age: 30,
  country: "GR",
  city_hr: "Thessaloniki",
  city_en: "Thessaloniki",
  begins_on: "31/10/2012",
  ends_on: "11/11/2012",
  participating_countries: nil,
  infoletter: my_file("ADAE_Infoletter.pdf"),
  application_form: my_file("ADAE_Application_form.doc"),
  deadline: "05/09/2012",
  available_space: 6
)

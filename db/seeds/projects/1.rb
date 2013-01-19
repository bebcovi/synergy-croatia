# encoding: utf-8

Project.create!(
  name_hr: "Show your Life",
  description_hr: <<-DESCRIPTION.strip_heredoc,
    ## O čemu se radi?

    Međunarodni trening ”Show your Life” okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu. Teme su razmjena iskustava i znanja, kreativnost i izazivanje postojećih normi izražavanja kroz video/audio medije.

    ## Kada i gdje?

    Razmjena se odvija u mjestu Holloko, Mađarska, od 31.10. do 11.11.2012.

    ## Tko se može prijaviti?

    Iz Hrvatske putuju 3 osobe starije od 21 godine.

    ## Troškovi

    Projekt je sufinanciran sredstvima iz EU, te je pokriveno 100% troškova hrane, smještaja i razmjene, te 70% putnih troškova. Sudionici plaćaju 30% putnih troškova, kotizaciju od 50 EUR, putno osiguranje, te 100 kn prilikom prijave za administrativne troškove u Hrvatskoj.

    ## Želim saznati više…

    Za dodatne informacije možete pogledati priloženi infoletter. Ako imate bilo kakvih pitanja, slobodno nas kontaktirajte na <synergy@synergy-croatia.com>.

    ## Prijava

    Ako se želite prijaviti, preuzmite priloženi obrazac, ispunite ga i pošaljite na gore navedenu email adresu. Rok za prijavu: 5.9. 2012.
  DESCRIPTION
  summary_hr: %(Međunarodni trening "Show your Life" okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu.),
  country: "HU",
  city_hr: "Hollókő",
  city_en: "Hollókő",
  begins_on: "31/10/2012",
  ends_on: "11/11/2012",
  minimum_age: 21,
  maximum_age: nil,
  participating_countries: nil,
  infoletter: my_file("SYL_Infoletter.pdf"),
  application_form: my_file("SYL_Application_form.doc"),
  deadline: "05/09/2012",
  available_space: 3,
  category: Category.find_by_name_en("International Media training"),
)

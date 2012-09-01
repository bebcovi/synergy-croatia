# encoding: utf-8

category = Category.find_by_name_en("International Media training")
category.projects.create!(
  name: "Show your Life",
  country: "HU",
  city_hr: "Hollókő",
  city_en: "Hollókő",
  begins_on: "31/10/2012",
  ends_on: "11/11/2012",
  description_hr: "Međunarodni trening ”Show your Life” okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu. Teme su razmjena iskustava i znanja, kreativnost i izazivanje postojećih normi izražavanja kroz video/audio medije.",
  description_en: "The internatinal training \"Show your Life\" gathers a group of young people who want to improve their skills of working with young people and groups using and experimenting with media techniques throughout their work. Topics are exchange of experience and knowledge, creativity and challenging the existing norms of expression through video/audio media.",
  summary_hr: "Međunarodni trening ”Show your Life” okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu.",
  summary_en: "The internatinal training \"Show your Life\" gathers a group of young people who want to improve their skills of working with young people and groups using and experimenting with media techniques throughout their work.",
  minimum_age: 21,
  maximum_age: nil,
  expenses_hr: "Projekt je sufinanciran sredstvima iz EU, te je pokriveno 100% troškova hrane, smještaja i razmjene, te 70% putnih troškova. Sudionici plaćaju 30% putnih troškova, kotizaciju od 50 EUR, putno osiguranje, te 100 kn prilikom prijave za administrativne troškove u Hrvatskoj.",
  expenses_en: "The project is cofinanced by EU, so expenses for food, accomodation and exchange are 100% covered, and the expenses for transportation are 70% covered. The participants are paying for the other 30% of transportation expenses, participation fee of 50 EUR, traveling insurance, and 100kn upon applying for administrative expenses in Croatia.",
  participating_countries: nil,
  infoletter: my_file("SYL_Infoletter.pdf"),
  application_form: my_file("SYL_Application_form.doc"),
  deadline: "05/09/2012",
  available_space: 3
)

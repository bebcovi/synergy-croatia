# encoding: utf-8

category = Category.find_by_name_en("Youth Exchange")
category.projects.create!(
  name: "All different, All equal",
  country: "GR",
  city_hr: "Thessaloniki",
  city_en: "Thessaloniki",
  begins_on: "31/10/2012",
  ends_on: "11/11/2012",
  description_hr: %(Međunarodna razmjena mladih "All different, all equal", okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja. Stoga, ako se volite družiti, putovati, upoznati nove ljude, te usput naučiti nešto novo o drugim kulturama, ovaj put imate priliku upoznati Grčku, naučiti znakovni jezik, upoznati i poigrati se s vlastitim predrasudama, te se malo bogatiji vratiti doma.),
  description_en: %(The international youth exchange "All different, all equal" gathers a group of 24 participants from Europe, and the main topic is inclusion of young people with hearing disorders and connecting with proactive young people from other countries. So, if you like to hang out, travel, meet new people, and learn something new about other cultures in the process, this time you have the opportunity to get to acquainted with Greece, learn the sign language, meet and play with your own prejudice, and come home a little richer.),
  summary_hr: %(Međunarodna razmjena mladih "All different, all equal", okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja.),
  summary_en: %(The international youth exchange "All different, all equal" gathers a group of 24 participants from Europe, and the main topic is inclusion of young people with hearing disorders and connecting with proactive young people from other countries.),
  minimum_age: 18,
  maximum_age: 30,
  expenses_hr: %(Projekt je sufinanciran sredstvima iz EU, te je pokriveno 100% troškova hrane, smještaja i razmjene, te 70% putnih troškova. Sudionici plaćaju 30% putnih troškova, putno osiguranje (opcionalno), te 100kn prilikom prijave za administrativne troškove u Hrvatskoj.),
  expenses_en: %(The project is cofinanced by EU, so expenses for food, accomodation and exchange are 100% covered, and the expenses for transportation are 70% covered. The participants are paying for the other 30% of transportation expenses, and 100kn upon applying for administrative expenses in Croatia.),
  participating_countries: nil,
  infoletter: my_file("ADAE_Infoletter.pdf"),
  application_form: my_file("ADAE_Application_form.doc"),
  deadline: "05/09/2012",
  available_space: 6
)

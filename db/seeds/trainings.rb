# encoding: utf-8

Training.create! [
  {
    name: "Show your Life",
    category: Category.find_by_name_en("International Media training"),
    country: "HU",
    city_hr: "Hollókő",
    city_en: "Hollókő",
    begins_on: "31/10/2012",
    ends_on: "11/11/2012",
    description_hr: "Međunarodni trening ”Show your Life” okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu. Teme su razmjena iskustava i znanja, kreativnost i izazivanje postojećih normi izražavanja kroz video/audio medije.",
    description_en: "The internatinal training \"Show your Life\" gathers a group of young people who want to improve their skills of working with young people and groups using and experimenting with media techniques throughout their work. Topics are exchange of experience and knowledge, creativity and challenging the existing norms of expression through video/audio media.",
    summary_hr: "Međunarodni trening ”Show your Life” okuplja grupu mladih koji žele obogatiti svoje vještine rada s mladima i grupama korištenjem i eksperimentiranjem s media tehnikama u svom radu.",
    summary_en: "The internatinal training \"Show your Life\" gathers a group of young people who want to improve their skills of working with young people and groups using and experimenting with media techniques throughout their work.",
    maximum_age: nil,
    minimum_age: 21,
    expenses_hr: "Projekt je sufinanciran sredstvima iz EU, te je pokriveno 100% troškova hrane, smještaja i razmjene, te 70% putnih troškova. Sudionici plaćaju 30% putnih troškova, kotizaciju od 50 EUR, putno osiguranje, te 100 kn prilikom prijave za administrativne troškove u Hrvatskoj.",
    expenses_en: "The project is cofinanced with means from EU, so expenses for food, accomodation and exchange are 100% covered, and the expenses for transportation are 70% covered. The participants are paying for the other 30% of transportation expenses, participation fee of 50 EUR, traveling insurance, and 100kn upon applying for administrative expenses in Croatia.",
    participating_countries: nil,
    deadline: "05/09/2012",
    available_space: 3,
    infoletter: Rack::Test::UploadedFile.new("#{Rails.root}/db/seeds/files/SYL_Infoletter.pdf", "application/pdf"),
    application_form: Rack::Test::UploadedFile.new("#{Rails.root}/db/seeds/files/SYL_Application_Form.doc", "application/msword")
  },
  {
    name: "All different, All equal",
    category: Category.find_by_name_en("Youth Exchange"),
    country: "GR",
    city_hr: "Thessaloniki",
    city_en: "Thessaloniki",
    begins_on: "31/10/2012",
    ends_on: "11/11/2012",
    description_hr: "Međunarodna razmjena mladih \"All different, all equal\", okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja. Stoga, ako se volite družiti, putovati, upoznati nove ljude, te usput naučiti nešto novo o drugim kulturama, ovaj put imate priliku upoznati Grčku, naučiti znakovni jezik, upoznati i poigrati se s vlastitim predrasudama, te se malo bogatiji vratiti doma.",
    description_en: "The international youth exchange \"All different, all equal\" gathers a group of 24 participants from Europe, and the main topic is inclusion of young people with hearing disorders and connecting with proactive young people from other countries. So, if you like to hang out, travel, meet new people, and learn something new about other cultures in the process, this time you have the opportunity to get to acquainted with Greece, learn the sign language, meet and play with your own prejudice, and come home a little richer.",
    summary_hr: "Međunarodna razmjena mladih \"All different, all equal\", okuplja grupu od 24 sudionika iz Europe, a glavna tema je inkluzija mladih s oštećenjem sluha te povezivanje s proaktivnim mladima iz drugih zemalja.",
    summary_en: "The international youth exchange \"All different, all equal\" gathers a group of 24 participants from Europe, and the main topic is inclusion of young people with hearing disorders and connecting with proactive young people from other countries.",
  }
]

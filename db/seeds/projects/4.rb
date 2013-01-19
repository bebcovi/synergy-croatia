# encoding: utf-8

Project.create!(
  name_hr: "Unique & United",
  country: "CZ",
  city_hr: "Naše Kamenka",
  city_en: "Naše Kamenka",
  begins_on: "15/07/2011",
  ends_on: "23/07/2011",
  description_hr: nil,
  summary_hr: nil,
  minimum_age: nil,
  maximum_age: nil,
  participating_countries: nil,
  infoletter: nil,
  application_form: nil,
  deadline: "01/07/2011",
  available_space: nil,
  category: Category.find_by_name_en("Basic Synergy training"),
)

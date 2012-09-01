# encoding: utf-8

category = Category.find_by_name_en("Basic Synergy training")
category.projects.create!(
  name: "Unique & United",
  country: "CZ",
  city_hr: "Naše Kamenka",
  city_en: "Naše Kamenka",
  begins_on: "15/07/2011",
  ends_on: "23/07/2011",
  description_hr: nil,
  description_en: nil,
  summary_hr: nil,
  summary_en: nil,
  minimum_age: nil,
  maximum_age: nil,
  expenses_hr: nil,
  expenses_en: nil,
  participating_countries: nil,
  infoletter: nil,
  application_form: nil,
  deadline: nil,
  available_space: nil
)

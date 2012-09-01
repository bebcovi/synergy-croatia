# encoding: utf-8

category = Category.find_by_name_en("Practicing Coaching training")
category.projects.create!(
  name: nil,
  country: "NL",
  city_hr: "Ommen",
  city_en: "Ommen",
  begins_on: "04/05/2012",
  ends_on: "10/05/2012",
  description_hr: <<-DESCRIPTION,
Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.

Ovaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su **Stella Saratsi** and **Marco Vlaming**.
  DESCRIPTION
  description_en: <<-DESCRIPTION,
Practicing Coaching is a training for all who work with individuals and groups, who love to work on strengthening others, and are aimed at encouraging the best in every person.

This seven-day training in the form of coaching workshops gives the opportunity that every participant consciously uses different coaching techniques tuned to their own style. Skills on the training are acquired through experientially learning. The trainers are **Stella Saratsi** amd **Marco Vlaming**.
  DESCRIPTION
  summary_hr: %(Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.),
  summary_en: %(Practicing Coaching is a training for all who work with individuals and groups, who love to work on strengthening others, and are aimed at encouraging the best in every person.),
  maximum_age: nil,
  minimum_age: nil,
  expenses_hr: nil,
  expenses_en: nil,
  participating_countries: nil,
  infoletter: my_file("PCT_Infoletter.doc"),
  application_form: my_file("PCT_Application_form.doc"),
  deadline: "15/04/2012",
  available_space: nil
)

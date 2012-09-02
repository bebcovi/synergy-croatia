# encoding: utf-8

category = Category.find_by_name_en("Practicing Coaching training")
category.projects.create!(
  name: nil,
  description_hr: <<-DESCRIPTION,
## O čemu se radi

Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.

Ovaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su Stella Saratsi and Marco Vlaming.

## Kada i gdje u Nizozemskoj?

Trening će se odvijati od 4. do 10.5.2012. u Ommenu.

## Tko se može prijaviti?

Svi koji rade s ljudime i žele otkriti mogućnosti coachinga ili žele unaprijediti kompetencije u coachingu. Mlađi od 18 trebaju kontaktirati Olde Vechte prije upisa.

## Želim saznati više…

Za dodatne informacije možete preuzeti priloženi infoletter, a ako imate pitanja, kontakt email je <synergy@synergy-croatia.com>.

## Kako da se prijavim?

Zainteresirani neka ispune priloženu prijavnicu i pošalju ju na gore navedenu adresu s naznakom “za coaching trening“.
  DESCRIPTION
  summary_hr: %(Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.),
  country: "NL",
  city_hr: "Ommen",
  city_en: "Ommen",
  begins_on: "04/05/2012",
  ends_on: "10/05/2012",
  maximum_age: nil,
  minimum_age: nil,
  participating_countries: nil,
  infoletter: my_file("PCT_Infoletter.doc"),
  application_form: my_file("PCT_Application_form.doc"),
  deadline: "15/04/2012",
  available_space: nil
)

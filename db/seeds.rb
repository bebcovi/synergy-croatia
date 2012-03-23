# encoding: utf-8
require 'date'

Training.delete_all
Training.create \
  :title => "Novi trening",
  :description => "Opis treninga...",
  :goal => "Poševiti se",
  :begins_on => Date.parse("3rd Jan 2015"),
  :ends_on => Date.parse("10th Jan 2015"),
  :participating_countries => "Hrvatska, Rumunjska i Mađarska",
  :age_restriction => 18,
  :location => "Bukurešt",
  :infoletter_url => "#",
  :participation_form_url => "#",
  :additional_info => "Dodatne informacije..."

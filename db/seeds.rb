# encoding: utf-8
require 'date'

Training.delete_all
Training.create \
  :title => "Practicing Coaching training",
  :description => "Practicing Coaching je trening za one koji rade s pojedincima ili grupama, koji vole raditi na osnaživanju drugih, i usmjereni su poticanju najboljeg u svakoj osobi.\n\nOvaj sedmo-dnevni treningu u obliku coaching radionica daje priliku da polaznik svjesno koristi različite coaching tehnike usklađene sa vlastitim stilom. Vještine na treningu se stječu kroz iskustveno učenje. Treneri su Stella Saratsi and Marco Vlaming.",
  :goal => nil,
  :begins_on => Date.parse("4th May 2012"),
  :ends_on => Date.parse("10th May 2012"),
  :participating_countries => nil,
  :age_restriction => nil,
  :location => "Ommen, Nizozemska",
  :infoletter_url => "#",
  :participation_form_url => "#",
  :additional_info => nil

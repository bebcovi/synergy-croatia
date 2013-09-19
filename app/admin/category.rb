ActiveAdmin.register Category do
  menu false

  instance_eval(&Synergy.active_admin.category)
end

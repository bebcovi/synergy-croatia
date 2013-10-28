ActiveAdmin.register Post do
  menu parent: "News", priority: 1

  instance_eval(&Synergy.active_admin.post)
end

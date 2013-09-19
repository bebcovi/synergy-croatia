ActiveAdmin.register Post do
  menu parent: "Upcoming", priority: 1

  instance_eval(&Synergy.active_admin.post)
end

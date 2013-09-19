ActiveAdmin.register Project do
  menu parent: "Upcoming", priority: 2

  instance_eval(&Synergy.active_admin.project)
end

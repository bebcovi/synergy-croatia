ActiveAdmin.register Project do
  menu parent: "News", priority: 3

  instance_eval(&Synergy.active_admin.project)
end

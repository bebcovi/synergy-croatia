ActiveAdmin.register Project do
  menu parent: "News", priority: 2

  instance_eval(&Synergy.active_admin.project)
end

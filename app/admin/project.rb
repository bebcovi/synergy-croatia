ActiveAdmin.register Project do
  menu parent: "Projects", priority: 1

  instance_eval(&Synergy.active_admin.project)
end

ActiveAdmin.register Announcement do
  menu parent: "Sidebar", priority: 1

  instance_eval(&Synergy.active_admin.announcement)
end

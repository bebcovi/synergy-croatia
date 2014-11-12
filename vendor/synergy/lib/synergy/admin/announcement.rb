Synergy.active_admin.announcement = proc do
  config.sort_order = "created_at_desc"
  config.per_page = 10

  decorate_with AnnouncementDecorator

  index do
    selectable_column
    column :content_en do |announcement|
      truncate smarty_pants(announcement.content_en), length: 20
    end
    column :content_hr do |announcement|
      truncate smarty_pants(announcement.content_hr), length: 20
    end
    column :expires_on
    default_actions
  end

  form partial: "form"

  show title: ->(announcement) { announcement.to_s } do |announcement|
    attributes_table do
      row :expires_on
    end

    locale_attributes :content
  end
end

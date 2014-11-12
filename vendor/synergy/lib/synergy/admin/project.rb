Synergy.active_admin.project = proc do
  config.sort_order = "created_at_desc"
  config.per_page   = 10

  decorate_with ProjectDecorator

  filter :category
  filter :name_en
  filter :name_hr
  filter :description_en
  filter :description_hr

  index do
    selectable_column
    column :name do |project|
      smarty_pants project.name_en
    end
    column :category
    column :date
    default_actions
  end

  form partial: "form"

  show title: ->(project) { project.to_s } do |project|
    attributes_table do
      row :cover_photo do
        if project.cover_photo_processing?
          "Uploading... (refresh at will)"
        elsif project.cover_photo?
          image_tag project.cover_photo_url(:small), height: 100
        end
      end
      row :category
      row :date
      row :deadline
    end

    locale_attributes :title, :description, :summary, :location,
      :age_restriction, :capacity
  end
end

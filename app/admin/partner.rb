ActiveAdmin.register Partner do
  menu parent: "Partners", priority: 2

  config.sort_order = "position_asc"

  decorate_with PartnerDecorator

  filter :name_hr
  filter :name_en

  index do
    selectable_column
    column :name
    default_actions
  end

  form partial: "form"

  show title: ->(partner) { partner.to_s } do |testimonial|
    attributes_table do
      row :photo do
        image_tag partner.photo_url(:small), height: 100
      end
    end

    locale_attributes :name, :url
  end
end

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
      row "Photo" do
        img src: testimonial.photo_url(:small)
      end
    end

    locale_attributes :content
  end
end

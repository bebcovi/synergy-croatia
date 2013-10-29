ActiveAdmin.register Partner do
  menu parent: "Partners", priority: 2

  config.sort_order = "position_asc"

  decorate_with PartnerDecorator

  member_action :move_higher, method: :put do
    resource.move_higher
    redirect_to collection_path
  end

  member_action :move_lower, method: :put do
    resource.move_lower
    redirect_to collection_path
  end

  filter :name_hr
  filter :name_en

  index do
    selectable_column
    column :position do |partner|
      link_to(raw("<i class='icon-caret-up'></i>"), [:move_higher, :admin, partner], method: :put) + raw("<br>") +
      link_to(raw("<i class='icon-caret-down'></i>"), [:move_lower, :admin, partner], method: :put)
    end
    column :photo do |partner|
      image_tag partner.photo.url(:small), height: 50
    end
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

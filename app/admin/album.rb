ActiveAdmin.register Album do
  menu parent: "Gallery", priority: 1

  config.sort_order = "position_asc"
  config.filters = false
  config.paginate = false

  decorate_with AlbumDecorator

  member_action :move_higher, method: :put do
    resource.move_higher
    redirect_to collection_path
  end

  member_action :move_lower, method: :put do
    resource.move_lower
    redirect_to collection_path
  end

  index do
    selectable_column
    column :position do |album|
      link_to(raw("<i class='icon-caret-up'></i>"), [:move_higher, :admin, album], method: :put) + raw("<br>") +
      link_to(raw("<i class='icon-caret-down'></i>"), [:move_lower, :admin, album], method: :put)
    end
    column :cover_photo do |album|
      image_tag album.cover_photo.image_url(:small), height: 50
    end
    column :name_en
    column :name_hr
    column :photos do |album|
      "#{album.photos.count} photos"
    end
    default_actions
  end

  form partial: "form"

  show title: ->(album) { album.to_s } do |album|
    locale_attributes :name, :description

    attributes_table do
      row :photos do
        ol class: "photos" do
          album.photos.inject(raw("")) do |result, photo|
            result << li(class: "photo") do
              image_tag(photo.image.url(:small), height: 100)
            end
          end
        end
      end
    end
  end

  controller do
    respond_to :js, only: :update

    def create
      super do |success, failure|
        success.html { redirect_to edit_resource_path }
      end
    end

    def update
      super do |success, failure|
        success.html { redirect_to collection_path }
      end
    end
  end
end

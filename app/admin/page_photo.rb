ActiveAdmin.register PagePhoto do
  menu false

  form partial: "form"

  show title: ->(page_photo) { page_photo.to_s } do |text|
    attributes_table do
      row :image do
        image_tag page_photo.image.url(:display)
      end
    end
  end

  controller do
    def update
      super { edit_resource_path }
    end
  end
end

Synergy.active_admin.post = proc do
  config.sort_order = "created_at_desc"

  decorate_with PostDecorator

  index do
    selectable_column
    column :title_en
    column :title_hr
    column :created_at do |post|
      post.created_at.to_date.to_s(:long)
    end
    default_actions
  end

  form partial: "form"

  show title: ->(post) { post.to_s } do |post|
    attributes_table do
      row :cover_photo do
        if post.cover_photo_processing?
          "Uploading... (refresh at will)"
        elsif post.cover_photo?
          image_tag post.cover_photo_url(:small), height: 100
        end
      end
    end

    locale_attributes :title, :body, :summary
  end
end

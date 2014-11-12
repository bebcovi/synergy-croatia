Synergy.active_admin.testimonial = proc do
  config.sort_order = "created_at_desc"
  config.per_page   = 10

  decorate_with TestimonialDecorator

  index do
    selectable_column
    column :author
    column :project
    default_actions
  end

  form partial: "form"

  show title: ->(testimonial) { testimonial.to_s } do |testimonial|
    attributes_table do
      row :author
    end

    %i[en hr].each do |locale|
      h1 { {en: "English", hr: "Croatian"}[locale] }

      attributes_table do
        I18n.with_locale(locale) do
          row :content
          row :project
        end
      end
    end
  end
end

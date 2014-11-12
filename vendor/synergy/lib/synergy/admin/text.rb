Synergy.active_admin.text = proc do
  menu false

  decorate_with TextDecorator

  form partial: "form"

  show title: ->(text) { text.to_s } do |text|
    attributes_table do
      row "Table of contents?" do
        {true => "Yes", false => "No"}[text.toc?]
      end
      row :body_en do
        markdown text.body_en
      end
      row :body_hr do
        markdown text.body_hr
      end
    end
  end
end

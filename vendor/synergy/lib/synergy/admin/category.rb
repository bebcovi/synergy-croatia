Synergy.active_admin.category = proc do
  config.paginate = false

  decorate_with CategoryDecorator

  index do
    selectable_column
    column :name_en
    column :name_hr
    default_actions
  end

  controller do
    def create
      super do |success, failure|
        success.html { redirect_to collection_path }
      end
    end

    def update
      super do |success, failure|
        success.html { redirect_to collection_path }
      end
    end
  end

  form partial: "form"
end

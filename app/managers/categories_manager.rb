class CategoriesManager < BaseManager
  def create(attributes)
    category = Category.new(attributes)

    if category.save
      create_succeeded(category)
    else
      create_failed(category)
    end
  end

  def update(id, attributes)
    category = Category.find(id)

    if category.update_attributes(attributes)
      update_succeeded(category)
    else
      update_failed(category)
    end
  end

  def destroy(id)
    category = Category.destroy(id)
    destroy_succeeded(category)
  end
end

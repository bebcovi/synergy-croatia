class CategoriesManager < Struct.new(:listener)
  def create(attributes)
    category = Category.new(attributes)

    if category.save
      listener.create_category_succeeded(category)
    else
      listener.create_category_failed(category)
    end
  end
end

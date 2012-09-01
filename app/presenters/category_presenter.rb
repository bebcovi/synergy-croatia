class CategoryPresenter < BasePresenter
  presents :category

  def edit_button(text)
    @template.edit_button text, edit_admin_category_path(category)
  end

  def delete_button(text)
    @template.delete_button text, admin_category_path(category)
  end
end

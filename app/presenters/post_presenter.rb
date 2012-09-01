class PostPresenter < BasePresenter
  presents :post

  def edit_button(text)
    @template.edit_button text, edit_admin_post_path(post)
  end

  def delete_button(text)
    @template.delete_button text, admin_post_path(post)
  end

  def title
    smarty_pants post.title
  end

  def body
    markdown post.body
  end
end

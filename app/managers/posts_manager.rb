class PostsManager < BaseManager
  def create(attributes)
    post = Post.new(attributes)

    if post.save
      create_succeeded(post)
    else
      create_failed(post)
    end
  end

  def update(id, attributes)
    post = Post.find(id)

    if post.update_attributes(attributes)
      update_succeeded(post)
    else
      update_failed(post)
    end
  end

  def destroy(id)
    post = Post.destroy(id)
    destroy_succeeded(post)
  end
end

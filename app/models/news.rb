class News
  def self.all
    (Project.upcoming + Post.scoped).sort { |x, y| y.created_at <=> x.created_at }
  end
end

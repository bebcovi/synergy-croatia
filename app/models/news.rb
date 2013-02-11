class News
  def self.all
    (Project.upcoming.available_in(I18n.locale) + Post.available_in(I18n.locale)).
      sort { |x, y| y.created_at <=> x.created_at }
  end
end

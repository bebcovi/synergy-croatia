atom_feed language: I18n.locale do |feed|
  feed.title("Synergy Croatia · #{t(".page_title")}")
  feed.updated @news.map(&:updated_at).max

  @news.each do |news|
    feed.entry(news) do |entry|
      case news
      when Project
        present news do |project_presenter|
          entry.title(project_presenter.title, type: "html")
          entry.content(project_presenter.summary, type: "html")
        end
      when Post
        present news do |post_presenter|
          entry.title(post_presenter.title, type: "html")
          entry.content(post_presenter.body, type: "html")
        end
      end
    end
  end
end

atom_feed language: I18n.locale do |feed|
  feed.title("Synergy Croatia · #{t(".page_title")}")
  feed.updated @projects.maximum(:updated_at)

  @projects.each do |project|
    feed.entry(project) do |entry|
      present project do |project_presenter|
        entry.title(project_presenter.title, type: "html")
        entry.content(project_presenter.description, type: "html")
      end
    end
  end
end

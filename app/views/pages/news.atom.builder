atom_feed language: I18n.locale do |feed|
  feed.title("Synergy Croatia · #{t(".page_title")}")
  feed.updated @trainings.maximum(:updated_at)

  @trainings.each do |training|
    feed.entry(training) do |entry|
      present training do |training_presenter|
        entry.title(training_presenter.title, type: "html")
        entry.content(training_presenter.description, type: "html")
      end
    end
  end
end

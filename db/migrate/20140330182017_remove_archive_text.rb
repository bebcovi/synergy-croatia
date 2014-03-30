require "pg_search"

class RemoveArchiveText < ActiveRecord::Migration
  def up
    Text.find_by(action: "archive").try(:delete)
    PgSearch::Multisearch.rebuild(Text)
  end
end

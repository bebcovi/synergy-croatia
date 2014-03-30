require "pg_search"

class CreatePgSearchDocuments < ActiveRecord::Migration
  def change
    create_table :pg_search_documents do |t|
      t.text :content
      t.belongs_to :searchable, :polymorphic => true
      t.timestamps
    end

    PgSearch::Multisearch.rebuild(Post)
    PgSearch::Multisearch.rebuild(Project)
    PgSearch::Multisearch.rebuild(Text)
  end
end

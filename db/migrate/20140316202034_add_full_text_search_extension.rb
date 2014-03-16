class AddFullTextSearchExtension < ActiveRecord::Migration
  def change
    reversible do |direction|
      direction.up do
        execute "create extension unaccent"
        execute "create extension pg_trgm"
      end

      direction.down do
        execute "drop extension unaccent"
        execute "drop extension pg_trgm"
      end
    end
  end
end

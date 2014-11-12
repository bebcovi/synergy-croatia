require "draper"

Draper::CollectionDecorator.delegate \
  :reorder, :page, :current_page, :total_pages, :limit_value,
  :total_count, :num_pages, :per_page, :offset, :total_entries,
  :total_pages, :klass

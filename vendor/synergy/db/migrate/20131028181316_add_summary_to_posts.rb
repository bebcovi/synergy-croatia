class AddSummaryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :summary_en, :text
    add_column :posts, :summary_hr, :text
  end
end

class AddSummaryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :summary_hr, :text
    add_column :projects, :summary_en, :text
  end
end

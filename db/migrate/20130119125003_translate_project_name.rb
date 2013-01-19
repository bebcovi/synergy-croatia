class TranslateProjectName < ActiveRecord::Migration
  def up
    remove_column :projects, :name
    add_column :projects, :name_en, :string
    add_column :projects, :name_hr, :string
  end

  def down
    remove_column :projects, :name_en
    remove_column :projects, :name_hr
    add_column :projects, :name, :string
  end
end

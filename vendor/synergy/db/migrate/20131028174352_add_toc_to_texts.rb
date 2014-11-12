class AddTocToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :toc, :boolean, default: false
  end
end

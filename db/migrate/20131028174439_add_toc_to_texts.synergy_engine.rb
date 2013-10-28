# This migration comes from synergy_engine (originally 20131028174352)
class AddTocToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :toc, :boolean, default: false
  end
end

# This migration comes from synergy_engine (originally 20130726130142)
class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name_hr
      t.string :name_en

      t.timestamps
    end
  end
end

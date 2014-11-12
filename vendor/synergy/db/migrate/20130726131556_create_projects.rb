class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name_en
      t.string :name_hr
      t.text :description_hr
      t.text :description_en
      t.integer :category_id
      t.string :location_en
      t.string :location_hr
      t.date :begins_on
      t.date :ends_on
      t.date :deadline
      t.string :age_restriction_en
      t.string :age_restriction_hr
      t.string :capacity_en
      t.string :capacity_hr

      t.timestamps
    end
  end
end

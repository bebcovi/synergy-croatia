class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description_hr
      t.text :description_en
      t.text :summary_hr
      t.text :summary_en
      t.text :participating_countries
      t.string :country
      t.string :city_hr
      t.string :city_en
      t.date :begins_on
      t.date :ends_on
      t.attachment :infoletter
      t.attachment :application_form
      t.integer :maximum_age
      t.integer :minimum_age
      t.date :deadline
      t.integer :available_space
      t.references :category

      t.timestamps
    end
  end
end

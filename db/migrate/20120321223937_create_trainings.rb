class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title_hr
      t.string :title_en
      t.text :description_hr
      t.text :description_en
      t.text :summary_hr
      t.text :summary_en
      t.date :begins_on
      t.date :ends_on
      t.string :participating_countries
      t.string :city_hr
      t.string :city_en
      t.string :country
      t.string :infoletter
      t.string :application_form
      t.integer :maximum_age
      t.integer :minimum_age

      t.timestamps
    end
  end
end

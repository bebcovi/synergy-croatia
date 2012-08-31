class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description_hr
      t.text :description_en
      t.text :summary_hr
      t.text :summary_en
      t.text :expenses_hr
      t.text :expenses_en
      t.date :begins_on
      t.date :ends_on
      t.string :participating_countries
      t.string :city_hr
      t.string :city_en
      t.string :country

      if Rails.env.development?
        t.attachment :infoletter
        t.attachment :application_form
      else
        t.string :infoletter
        t.string :application_form
      end

      t.integer :maximum_age
      t.integer :minimum_age
      t.date :deadline
      t.integer :available_space
      t.references :category

      t.timestamps
    end
  end
end

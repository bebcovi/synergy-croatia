class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :level
      t.text :description
      t.string :goal

      t.date :begins_on
      t.date :ends_on

      t.string :participating_countries
      t.integer :age_restriction
      t.string :location

      t.string :infoletter_url
      t.string :participation_form_url

      t.text :additional_info

      t.timestamps
    end
  end
end

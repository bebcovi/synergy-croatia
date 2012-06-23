class SplitLocationIntoCityAndCountryOnTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, :location
    add_column :trainings, :city, :string
    add_column :trainings, :country, :string
  end

  def down
    add_column :trainings, :location, :string
    remove_column :trainings, [:city, :country]
  end
end

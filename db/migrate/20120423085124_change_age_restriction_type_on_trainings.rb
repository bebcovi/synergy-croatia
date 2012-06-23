class ChangeAgeRestrictionTypeOnTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, :age_restriction
    add_column :trainings, :maximum_age, :integer
    add_column :trainings, :minimum_age, :integer
  end

  def down
    add_column :trainings, :age_restriction, :integer
    remove_column :trainings, [:maximum_age, :minimum_age]
  end
end

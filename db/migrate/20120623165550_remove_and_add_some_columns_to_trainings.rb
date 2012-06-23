class RemoveAndAddSomeColumnsToTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, [:intended_group, :goal]
    add_column :trainings, :summary, :text
  end

  def down
    add_column :trainings, :intended_group, :string
    add_column :trainings, :goal, :string
    remove_column :trainings, :summary
  end
end

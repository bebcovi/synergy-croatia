class ChangeGoalColumnTypeToTextOnTrainings < ActiveRecord::Migration
  def up
    change_column :trainings, :goal, :text
  end

  def down
    change_column :trainings, :goal, :string
  end
end

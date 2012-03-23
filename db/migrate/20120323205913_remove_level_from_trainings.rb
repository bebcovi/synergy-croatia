class RemoveLevelFromTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, :level
  end

  def down
    add_column :trainings, :level, :string
  end
end

class AddIntendedGroupColumnOnTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :intended_group, :string
  end
end

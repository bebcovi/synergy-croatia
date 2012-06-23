class AddContactColumnOnTrainings < ActiveRecord::Migration
  def change
    add_column :trainings, :contact_email, :string
  end
end

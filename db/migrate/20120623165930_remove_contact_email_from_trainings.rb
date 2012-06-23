class RemoveContactEmailFromTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, :contact_email
  end

  def down
    add_column :trainings, :contact_email, :string
  end
end

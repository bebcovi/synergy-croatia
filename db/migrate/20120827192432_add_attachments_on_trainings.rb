class AddAttachmentsOnTrainings < ActiveRecord::Migration
  def up
    remove_column :trainings, [:infoletter, :participation_form]
    add_attachment :trainings, :infoletter
    add_attachment :trainings, :participation_form
  end

  def down
    remove_attachment :trainings, :infoletter
    remove_attachment :trainings, :participation_form
    add_column :trainings, :infoletter, :string
    add_column :trainings, :participation_form, :string
  end
end

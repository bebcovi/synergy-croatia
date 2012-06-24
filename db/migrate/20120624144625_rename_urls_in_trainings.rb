class RenameUrlsInTrainings < ActiveRecord::Migration
  def change
    rename_column :trainings, :infoletter_url, :infoletter
    rename_column :trainings, :participation_form_url, :participation_form
  end
end

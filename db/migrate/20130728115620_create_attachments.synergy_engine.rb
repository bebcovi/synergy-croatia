# This migration comes from synergy_engine (originally 20130727110908)
class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name_en
      t.string :name_hr
      t.string :file_en
      t.string :file_hr
      t.integer :project_id

      t.timestamps
    end
  end
end

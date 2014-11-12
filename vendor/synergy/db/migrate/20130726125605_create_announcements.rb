class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :content_en
      t.string :content_hr
      t.date :expires_on

      t.timestamps
    end
  end
end

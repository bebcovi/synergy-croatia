class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name_en
      t.string :name_hr
      t.text :description_en
      t.text :description_hr
      t.integer :position
      t.integer :cover_photo_id

      t.timestamps
    end
  end
end

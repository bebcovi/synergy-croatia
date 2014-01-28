# This migration comes from synergy_engine (originally 20140128125738)
class AddBackgroundColumns < ActiveRecord::Migration
  def change
    add_column :posts, :cover_photo_processing, :boolean
    add_column :posts, :cover_photo_tmp, :string
    add_column :projects, :cover_photo_processing, :boolean
    add_column :projects, :cover_photo_tmp, :string
  end
end

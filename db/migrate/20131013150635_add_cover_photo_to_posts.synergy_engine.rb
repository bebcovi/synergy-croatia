# This migration comes from synergy_engine (originally 20131013133159)
class AddCoverPhotoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cover_photo, :string
  end
end

class AddCoverPhotoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cover_photo, :string
  end
end

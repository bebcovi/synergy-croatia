# This migration comes from synergy_engine (originally 20131013131621)
class AddCoverPhotoToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :cover_photo, :string
  end
end

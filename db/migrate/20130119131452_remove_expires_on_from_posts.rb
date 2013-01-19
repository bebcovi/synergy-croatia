class RemoveExpiresOnFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :expires_on
  end

  def down
    add_column :posts, :expires_on, :date
  end
end

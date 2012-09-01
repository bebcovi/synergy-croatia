class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title_hr
      t.string :title_en
      t.text :body_hr
      t.text :body_en
      t.date :expires_on

      t.timestamps
    end
  end
end

class CreatePagePhotos < ActiveRecord::Migration
  class PagePhoto < ActiveRecord::Base
  end

  def change
    create_table :page_photos do |t|
      t.string :image
      t.string :action
      t.string :controller

      t.float :crop_x
      t.float :crop_y
      t.float :crop_w
      t.float :crop_h

      t.timestamps
    end

    PagePhoto.create!(controller: "pages", action: "news")
    PagePhoto.create!(controller: "pages", action: "about")
    PagePhoto.create!(controller: "pages", action: "evs")
    PagePhoto.create!(controller: "pages", action: "projects")
    PagePhoto.create!(controller: "pages", action: "partnerships")
  end
end

class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name_en
      t.string :name_hr
      t.string :photo
      t.string :url_en
      t.string :url_hr
    end
  end
end

class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :body_en
      t.text :body_hr
      t.string :controller
      t.string :action

      t.timestamps
    end
  end
end

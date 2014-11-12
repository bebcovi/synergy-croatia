class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :content_hr
      t.text :content_en
      t.string :author
      t.integer :project_id

      t.timestamps
    end
  end
end

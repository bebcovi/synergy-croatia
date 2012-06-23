class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :body
      t.string :author
      t.integer :training_id

      t.timestamps
    end
  end
end

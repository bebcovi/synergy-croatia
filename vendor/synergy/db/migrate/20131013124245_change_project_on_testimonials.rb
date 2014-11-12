class ChangeProjectOnTestimonials < ActiveRecord::Migration
  def change
    remove_column :testimonials, :project_id, :integer
    add_column :testimonials, :project_en, :string
    add_column :testimonials, :project_hr, :string
  end
end

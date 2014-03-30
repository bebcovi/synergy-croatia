class AddTextForProjects < ActiveRecord::Migration
  def change
    reversible do |direction|
      direction.up do
        Text.create!(controller: "pages", action: "projects", toc: true)
      end
      direction.down do
        Text.find("pages/projects").delete
      end
    end
  end
end

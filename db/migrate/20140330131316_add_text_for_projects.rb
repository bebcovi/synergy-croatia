class AddTextForProjects < ActiveRecord::Migration
  class Text < ActiveRecord::Base
  end

  def change
    reversible do |direction|
      direction.up do
        Text.create!(controller: "pages", action: "projects", toc: true)
      end
      direction.down do
        Text.find_by(action: "projects").delete
      end
    end
  end
end

class AddTextForTrainings < ActiveRecord::Migration
  class Text < ActiveRecord::Base
  end

  class PagePhoto < ActiveRecord::Base
  end

  def change
    reversible do |direction|
      direction.up do
        Text.create!(controller: "pages", action: "trainings", toc: true)
        PagePhoto.create!(controller: "pages", action: "trainings")
      end
      direction.down do
        Text.find_by(action: "trainings").delete
        PagePhoto.find_by(action: "trainings").destroy
      end
    end
  end
end

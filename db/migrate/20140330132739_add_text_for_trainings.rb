class AddTextForTrainings < ActiveRecord::Migration
  def change
    reversible do |direction|
      direction.up do
        Text.create!(controller: "pages", action: "trainings", toc: true)
        PagePhoto.create!(controller: "pages", action: "trainings")
      end
      direction.down do
        Text.find("pages/trainings").delete
        PagePhoto.find("pages/trainings").destroy
      end
    end
  end
end

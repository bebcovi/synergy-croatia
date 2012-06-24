class TranslateTrainings < ActiveRecord::Migration
  def up
    Training.create_translation_table!({
      :title => :string,
      :description => :text,
      :infoletter => :string,
      :participation_form => :string,
      :additional_info => :text,
      :summary => :text
    },{
      :migrate_data => true
    })
  end

  def down
    Training.drop_translation_table! :migrate_data => true
  end
end

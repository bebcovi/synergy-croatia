class AddKindToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :kind, :string, default: "international"
  end
end

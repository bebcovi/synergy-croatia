class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :username
      t.string :encrypted_password

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end

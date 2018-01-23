class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.float :current_lat
      t.float :current_long
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

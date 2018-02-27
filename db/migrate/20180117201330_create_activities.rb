class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.float :lat
      t.float :long
      t.boolean :completed
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end

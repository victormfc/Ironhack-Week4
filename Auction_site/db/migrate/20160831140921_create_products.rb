class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.datetime :dead_line
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

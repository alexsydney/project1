class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :title
      t.text :description
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end

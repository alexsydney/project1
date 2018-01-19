class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :location
      t.text :url_website
      t.integer :user_id

      t.timestamps
    end
  end
end

class AddImageUrlToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :image_url, :text
  end
end

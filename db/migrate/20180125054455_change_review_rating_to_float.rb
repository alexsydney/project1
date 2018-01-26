class ChangeReviewRatingToFloat < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :rating
    add_column :reviews, :rating, :float
  end
end

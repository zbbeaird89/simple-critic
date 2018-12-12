class AddEditingRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :editing_rating, :integer
  end
end

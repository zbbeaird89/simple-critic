class AddOverallRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :overall_rating, :integer
  end
end

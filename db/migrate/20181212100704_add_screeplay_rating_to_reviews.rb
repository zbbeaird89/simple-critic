class AddScreeplayRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :screenplay_rating, :integer
  end
end

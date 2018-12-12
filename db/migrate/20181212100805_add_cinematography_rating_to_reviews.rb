class AddCinematographyRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :cinematography_rating, :integer
  end
end

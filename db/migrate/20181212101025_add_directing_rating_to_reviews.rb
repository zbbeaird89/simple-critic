class AddDirectingRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :directing_rating, :integer
  end
end

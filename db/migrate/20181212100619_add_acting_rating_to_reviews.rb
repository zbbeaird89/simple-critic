class AddActingRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :acting_rating, :integer
  end
end

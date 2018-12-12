class AddMusicalScoreRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :musical_score_rating, :integer
  end
end

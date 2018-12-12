class AddPlotRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :plot_rating, :integer
  end
end

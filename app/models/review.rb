class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  columns = [:plot_rating, :acting_rating, :screenplay_rating, :cinematography_rating,
             :musical_score_rating, :editing_rating, :directing_rating]

  columns.each do |column|
    validates column, presence: true
  end

end

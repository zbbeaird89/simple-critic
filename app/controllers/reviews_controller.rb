class ReviewsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :destroy]

  def new
    @review = Review.new
    @movie  = Movie.find(params[:movie_id])
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.movie_id = params[:movie_id]

    if @review.save
      redirect_to @review
    else
      render "new"
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

    def review_params
      params.require(:review).permit(:user_id, :movie_id, :plot_rating, :acting_rating,
                                     :screenplay_rating, :cinematography_rating, :musical_score_rating,
                                     :editing_rating, :directing_rating, :overall_rating, :opinion)
    end
end

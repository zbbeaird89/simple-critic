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
      redirect_to movies_url
    else
      render "new"
    end
  end

  private

    def review_params
      params.require(:review).permit(:user_id, :movie_id, :opinion)
    end
end

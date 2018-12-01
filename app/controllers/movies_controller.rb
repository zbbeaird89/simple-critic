class MoviesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @genre_options = Genre.all.map { |g| [g.name, g.id] }
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render "new"
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
  end

  private

    def movie_params
      params.require(:movie).permit(:title, :description, :genre_id)
    end


end

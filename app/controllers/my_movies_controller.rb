class MyMoviesController < ApplicationController
  def index
    @movies = current_user.movies.order(created_at: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end

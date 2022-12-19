class MyMoviesController < ApplicationController
  def index
    @movies = current_user.my_movies.order(created_at: :desc)
  end

  def show
    @movie = MyMovie.find(params[:id])
  end
end

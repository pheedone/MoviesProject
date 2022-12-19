class AllMoviesController < ApplicationController
  def index
    @all_movies = AllMovie.all.order(created_at: :desc)
  end

  def show
    @all_movie = AllMovie.find(params[:id])
  end

  # add all_movie to my_movies
  def add_to_my_movies
    @all_movie = AllMovie.find(params[:id])
    @my_movie = MyMovie.new(name: @all_movie.name, description: @all_movie.description, release_date: @all_movie.release_date)
    @my_movie.user = current_user
    @my_movie.save
    redirect_to my_movie_path(@my_movie)
  end
end

class MyMoviesController < ApplicationController
  def index
    @movies = current_user.my_movies.order(created_at: :desc)
  end

  def show
    @movie = MyMovie.find(params[:id])
  end

  # TODO review and add a button for it in show and in index on the right
  # def change_description
  #   @movie = MyMovie.find(params[:id])
  #   @movie.update(my_movie_params)
  #   redirect_to my_movie_path(@movie)
  # end

  private

  # allow only centain parameters to be passed to the controller
  # def my_movie_params
  #   params.require(:my_movie).permit(:description)
  # end
end

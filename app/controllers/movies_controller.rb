class MoviesController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @movies = pagy(current_user.movies.order(created_at: :desc), items: 30)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end

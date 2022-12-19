class RenameMoviesToMyMovies < ActiveRecord::Migration[6.1]
  def change
    rename_table :movies, :my_movies
  end
end

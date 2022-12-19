class RenameUserMoviesToUserMyMovies < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_movies, :user_my_movies
  end
end

class RenameAttributeInMyMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_my_movies, :movie_id, :my_movie_id
  end
end

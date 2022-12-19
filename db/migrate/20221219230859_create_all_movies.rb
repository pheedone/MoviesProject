class CreateAllMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :all_movies do |t|
      t.string :name
      t.string :description
      t.string :string
      t.string :release_date

      t.timestamps
    end
  end
end

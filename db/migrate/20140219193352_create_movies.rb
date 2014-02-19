class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.integer :tmdb_id
      t.string :title
      t.string :original_title
      t.integer :year
      t.date :release_date
      t.float :rating
      t.integer :votes
      t.string :certification
      t.string :tagline
      t.text :outline
      t.text :plot
      t.text :runtime

      t.timestamps
    end
    add_index :movies, :imdb_id
    add_index :movies, :tmdb_id
    add_index :movies, :title
    add_index :movies, :original_title
    add_index :movies, :year
    add_index :movies, :release_date
    add_index :movies, :rating
  end
end

class Movie < ActiveRecord::Base
  attr_accessible :imdb_id, :original_title, :title, :year
end

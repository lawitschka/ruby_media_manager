# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130408155253) do

  create_table "movies", :force => true do |t|
    t.string   "imdb_id"
    t.string   "tmdb_id"
    t.string   "title"
    t.string   "original_title"
    t.integer  "year"
    t.date     "release_date"
    t.float    "rating"
    t.integer  "votes"
    t.text     "certification"
    t.string   "tagline"
    t.text     "outline"
    t.text     "plot"
    t.text     "runtime"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "movies", ["imdb_id"], :name => "index_movies_on_imdb_id"
  add_index "movies", ["original_title"], :name => "index_movies_on_original_title"
  add_index "movies", ["rating"], :name => "index_movies_on_rating"
  add_index "movies", ["release_date"], :name => "index_movies_on_release_date"
  add_index "movies", ["title"], :name => "index_movies_on_title"
  add_index "movies", ["tmdb_id"], :name => "index_movies_on_tmdb_id"
  add_index "movies", ["year"], :name => "index_movies_on_year"

end

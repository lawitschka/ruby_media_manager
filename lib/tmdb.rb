require 'tmdb/account.rb'
require 'tmdb/authentication.rb'
require 'tmdb/base.rb'
require 'tmdb/movies.rb'
require 'tmdb/jobs.rb'
require 'tmdb/search.rb'

module TMDB

  #############################################
  # Access configuration
  #############################################

  def self.api_key
    @@api_key
  end

  def self.api_key=(api_key)
    @@api_key = api_key
  end

  def self.language
    @@language ||= 'en'
  end

  def self.language=(value)
    @@language = value
  end



  #############################################
  # API Modules
  #############################################

  def self.account
    @@account ||= TMDB::Account.new
  end

  def self.authentication
    @@authentication ||= TMDB::Authentication.new
  end

  def self.movies
    @@movies ||= TMDB::Movies.new
  end

  def self.jobs
    @@jobs ||= TMDB::Jobs.new
  end

  def self.search
    @@search ||= TMDB::Search.new
  end



  #############################################
  # Configuration
  #############################################

  def self.configuration
    TMDB::Base.configuration
  end

end
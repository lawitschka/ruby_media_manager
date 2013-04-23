class TMDB::Jobs < TMDB::Base

  # Get a list of valid jobs.
  def list
    get '/job/list'
  end

end
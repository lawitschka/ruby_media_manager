class TMDB::Movies < TMDB::Base

  # Get the basic movie information for a specific movie id.
  def information(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}", :query => { :append_to_response => append_to_response }
  end

  # Get the alternative titles for a specific movie id.
  def alternative_titles(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/alternative_titles", :query => { :append_to_response => append_to_response }
  end

  # Get the cast information for a specific movie id.
  def casts(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/casts", :query => { :append_to_response => append_to_response }
  end

  # Get the images (posters and backdrops) for a specific movie id.
  def images(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/images", :query => { :append_to_response => append_to_response }
  end

  # Get the plot keywords for a specific movie id.
  def keywords(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/keywords", :query => { :append_to_response => append_to_response }
  end

  # Get the release date by country for a specific movie id.
  def releases(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/releases", :query => { :append_to_response => append_to_response }
  end

  # Get the trailers for a specific movie id.
  def trailers(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/trailers", :query => { :append_to_response => append_to_response }
  end

  # Get the translations for a specific movie id.
  def translations(movie_id, append_to_response = nil)
    get "/movie/#{movie_id}/translations", :query => { :append_to_response => append_to_response }
  end

  # Get the similar movies for a specific movie id.
  def similar_movies(movie_id, append_to_response = nil, page = 1)
    get "/movie/#{movie_id}/similar_movies", :query => { :append_to_response => append_to_response }
  end

  # Get the lists that the movie belongs to.
  def lists(movie_id, append_to_response = nil, page = 1)
    get "/movie/#{movie_id}/lists", :query => { :append_to_response => append_to_response }
  end

  # Get the changes for a specific movie id.
  #
  # Changes are grouped by key, and ordered by date in descending order. By default, only
  # the last 24 hours of changes are returned. The maximum number of days that can be returned
  # in a single request is 14. The language is present on fields that are translatable.
  #
  # Start date and end date must be a string of format YYYY-MM-DD.
  def changes(movie_id, start_date = nil, end_date = nil)
    options = { :body => {} }
    options[:body][:start_date] = start_date if start_date
    options[:body][:end_date]   = end_date   if end_date

    get "/movie/#{movie_id}/changes", options
  end

  # Get the latest movie id.
  def latest
    get '/latest'
  end

  # Get the list of upcoming movies. This list refreshes every day. The maximum number of
  # items this list will include is 100.
  def upcoming(page = 1)
    get '/movie/upcoming', :body => { :page => page }
  end

  # Get the list of movies playing in theatres. This list refreshes every day. The maximum
  # number of items this list will include is 100.
  def now_playing(page = 1)
    get '/movie/now_playing', :body => { :page => page }
  end

  # Get the list of popular movies on The Movie Database. This list refreshes every day.
  def popular(page = 1)
    get '/movie/popular', :body => { :page => page }
  end

  # Get the list of top rated movies. By default, this list will only include movies that
  # have 10 or more votes. This list refreshes every day.
  def top_rated(page = 1)
    get '/movie/top_rated', :body => { :page => page }
  end

  # This method lets users get the status of whether or not the movie has been rated or added
  # to their favourite or watch lists. A valid session id is required.
  def account_states(session_id, movie_id)
    get "/movie/#{movie_id}/account_states", :body => { :session_id => session_id }
  end

  # This method lets users rate a movie. A valid session id or guest session id is required.
  def rating(movie_id, value, session_id = nil, guest_session_id = nil)
    raise ArgumentError.new('Session ID or Guest Session ID musst be supplied') unless session_id || guest_session_id

    options = { :body => { :value => value } }
    options[:body][:session_id] = session_id if session_id
    options[:body][:guest_session_id] = guest_session_id if guest_session_id

    post "/movie/#{movie_id}/rating", options
  end

end
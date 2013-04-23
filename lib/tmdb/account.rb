class TMDB::Account < TMDB::Base

  # Get the basic information for an account. You will need to have a valid session id.
  def information(session_id)
    get '/account', :body => { :session_id => session_id }
  end

  # Get the lists that you have created and marked as a favorite.
  def lists(session_id, account_id, page = 1)
    options = {
                :body => {
                  :session_id => session_id,
                  :page => page
                }
              }

    get "/account/#{account_id}/lists", options
  end

  # Get the list of favorite movies for an account.
  def favorite_movies(session_id, account_id, page = 1, sort_by = 'created_at', sort_order = 'asc')
    options = {
                :body => {
                  :session_id => session_id,
                  :page => page,
                  :sort_by => sort_by,
                  :sort_order => sort_order
                }
              }

    get "/account/#{account_id}/favorite_movies", options
  end

  # Get the list of rated movies (and associated rating) for an account.
  def rated_movies(session_id, account_id, page = 1, sort_by = 'created_at', sort_order = 'asc')
    options = {
                :body => {
                  :session_id => session_id,
                  :page => page,
                  :sort_by => sort_by,
                  :sort_order => sort_order
                }
              }

    get "/account/#{account_id}/rated_movies", options
  end

  # Get the list of movies on an accounts watchlist.
  def movie_watchlist(session_id, account_id, page = 1, sort_by = 'created_at', sort_order = 'asc')
    options = {
                :body => {
                  :session_id => session_id,
                  :page => page,
                  :sort_by => sort_by,
                  :sort_order => sort_order
                }
              }

    get "/account/#{account_id}/movie_watchlist", options
  end

  # Add a movie to an accounts favorite list.
  def add_to_favorites(session_id, account_id, movie_id)
    options = {
                :body => {
                  :session_id => session_id,
                  :movie_id => movie_id,
                  :favorite => true
                }
              }

    post "/account/#{account_id}/favorite", options
  end

  # Remove a movie to an accounts favorite list.
  def remove_from_favorites(session_id, account_id, movie_id)
    options = {
                :body => {
                  :session_id => session_id,
                  :movie_id => movie_id,
                  :favorite => false
                }
              }

    post "/account/#{account_id}/favorite", options
  end

  # Add a movie to an accounts watch list.
  def add_to_watch_list(session_id, account_id, movie_id)
    options = {
                :body => {
                  :session_id => session_id,
                  :movie_id => movie_id,
                  :movie_watchlist => true
                }
              }

    post "/account/#{account_id}/movie_watchlist", options
  end

  # Remove a movie to an accounts watch list.
  def remove_from_watch_list(session_id, account_id, movie_id)
    options = {
                :body => {
                  :session_id => session_id,
                  :movie_id => movie_id,
                  :movie_watchlist => false
                }
              }

    post "/account/#{account_id}/movie_watchlist", options
  end


end
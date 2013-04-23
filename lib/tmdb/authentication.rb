class TMDB::Authentication < TMDB::Base

  # This method is used to generate a valid request token for user based authentication.
  # A request token is required in order to request a session id.
  #
  # You can generate any number of request tokens but they will expire after 60 minutes.
  # As soon as a valid session id has been created the token will be destroyed.
  #
  # Before requesting a session id with the returned request token, the user must allow
  # access. Redirect user to http://themoviedb.org/authenticate/:request_token in order
  # to get approval.
  def new_token
    get '/authentication/token/new'
  end

  # This method is used to generate a session id for user based authentication.
  # A session id is required in order to use any of the write methods.
  #
  # @see TMDB::Authentication#new_token
  def new_session(request_token)
    get '/authentication/session/new', :body => { :request_token => request_token }
  end

  # This method is used to generate a guest session id.
  #
  # A guest session can be used to rate movies without having a registered TMDb user account.
  # You should only generate a single guest session per user (or device) as you will be able
  # to attach the ratings to a TMDb user account in the future. There is also IP limits in
  # place so you should always make sure it's the end user doing the guest session actions.
  #
  # If a guest session is not used for the first time within 24 hours, it will be
  # automatically discarded.
  def new_guest_session
    get '/authentication/guest_session/new'
  end

end
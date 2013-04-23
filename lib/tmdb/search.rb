class TMDB::Search < TMDB::Base

  # Search for movies by title.
  def movie(query, page = 1, include_adult = false, year = nil)
    options = {
                :body => {
                  :query => query,
                  :page => page,
                  :include_adult => include_adult
                }
              }
    options[:body][:year] = year if year

    get '/search/movie', options
  end

  # Search for collections by name.
  def collection(query, page = 1)
    options = {
                :body => {
                  :query => query,
                  :page => page
                }
              }

    get '/search/collection', options
  end

  # Search for people by name.
  def person(query, page = 1, include_adult = false)
    options = {
                :body => {
                  :query => query,
                  :page => page,
                  :include_adult => include_adult
                }
              }

    get '/search/person', options
  end

  # Search for lists by name and description.
  def list(query, page = 1, include_adult = false)
    options = {
                :body => {
                  :query => query,
                  :page => page,
                  :include_adult => include_adult
                }
              }

    get '/search/list', options
  end

  # Search for companies by name.
  def company(query, page = 1)
    options = {
                :body => {
                  :query => query,
                  :page => page
                }
              }

    get '/search/company', options
  end

  # Search for keywords by name.
  def keyword(query, page = 1)
    options = {
                :body => {
                  :query => query,
                  :page => page
                }
              }

    get '/search/keyword', options
  end

end
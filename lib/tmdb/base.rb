class TMDB::Base
  include HTTParty

  # TMDB configuration
  base_uri 'private-8f24-themoviedb.apiary.io/3'
  # base_uri 'api.themoviedb.org/3'
  headers 'Accept' => 'application/json'
  format :json

  # Class variables
  @@configuration = nil
  @@configuration_updated_at = nil



  #############################################
  # TMDB configuration hash
  #############################################

  # Get the system wide configuration information. Some elements of the API require some knowledge
  # of this configuration data. The purpose of this is to try and keep the actual API responses as
  # light as possible. It is recommended you store this data within your application and check for
  # updates every so often.
  #
  # This method currently holds the data relevant to building image URLs as well as the change key map.
  #
  # To build an image URL, you will need 3 pieces of data. The base_url, size and file_path. Simply
  # combine them all and you will have a fully qualified URL
  def self.configuration
    return @@configuration if @@configuration &&
                              @@configuration_updated_at &&
                              @@configuration_updated_at > 7.days.ago

    @@configuration_updated_at = Time.now
    @@configuration = get('/configuration', :body => { :api_key => TMDB.api_key })
                      .parsed_response
                      .deep_symbolize_keys
  end



  #############################################
  # HTTP Methods
  #############################################

  def get(path, options={}, &block)
    options = options.deep_merge :body => { :api_key => TMDB.api_key, :language => TMDB.language }

    handle_response self.class.get(path, options, &block)
  end
  private :get

  def post(path, options={}, &block)
    options = options.deep_merge :body => { :api_key => TMDB.api_key, :language => TMDB.language }

    handle_response self.class.post(path, options, &block)
  end
  private :post

  def delete(path, options={}, &block)
    options = options.deep_merge :body => { :api_key => TMDB.api_key, :language => TMDB.language }

    handle_response self.class.delete(path, options, &block)
  end
  private :delete



  #############################################
  # Helpers
  #############################################

  def handle_response(response)
    if response.ok?
      response.parsed_response.deep_symbolize_keys
    else
      puts response.inspect
      # TODO Raise exception, something went wrong. Include body as message
    end
  end
  private :handle_response


end
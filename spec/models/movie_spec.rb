require 'spec_helper'

describe Movie do
  let(:movie) { Movie.make! }


  #########################
  # Attribute existence
  #########################

  it { should respond_to :imdb_id }
  it { should respond_to :tmdb_id }
  it { should respond_to :title }
  it { should respond_to :original_title }
  it { should respond_to :year }
  it { should respond_to :release_date }
  it { should respond_to :rating }
  it { should respond_to :votes }
  it { should respond_to :certification }
  it { should respond_to :tagline }
  it { should respond_to :outline }
  it { should respond_to :plot }
  it { should respond_to :runtime }


  #########################
  # Validations
  #########################

  it { should validate_presence_of :title }

end

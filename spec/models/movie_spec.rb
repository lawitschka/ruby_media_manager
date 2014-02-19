require 'spec_helper'

describe Movie do
  let(:movie) { build :movie }

  #################################################
  # Attribute existence
  #################################################

  it { should have_attribute :imdb_id }
  it { should have_attribute :tmdb_id }
  it { should have_attribute :title }
  it { should have_attribute :original_title }
  it { should have_attribute :year }
  it { should have_attribute :release_date }
  it { should have_attribute :rating }
  it { should have_attribute :votes }
  it { should have_attribute :certification }
  it { should have_attribute :tagline }
  it { should have_attribute :outline }
  it { should have_attribute :plot }
  it { should have_attribute :runtime }


  #################################################
  # Validations
  #################################################

  it { should validate_presence_of :title }

end

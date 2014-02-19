FactoryGirl.define do

  factory :movie do
    imdb_id         { "tt#{1000000 + rand(999999)}" }
    tmdb_id         { 10000 + rand(9999) }
    title           { Faker::Name.name }
    original_title  { Faker::Name.name }
    year            { (Date.today + rand(5).years).year }
    release_date    { Date.today + rand(500).days }
    rating          { rand * 10 }
    votes           { rand(1000) }
    certification   { 'USA:R' }
    tagline         { Faker::Lorem::sentence }
    outline         { Faker::Lorem::paragraph }
    plot            { Faker::Lorem::paragraph }
    runtime         { "#{rand(200)} min" }
  end

end
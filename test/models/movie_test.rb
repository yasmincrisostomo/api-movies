require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'valid movie' do
    movie = Movie.new(title: 'Top Gun: Maverick',
                      genre: 'Movie',
                      year: '2022',
                      country: 'USA',
                      published_at: '2022-05-26',
                      description: "Pete 'Maverick' Mitchell is brought back to teach a new band of TopGun academy
                                    graduates how to run a dangerous mission to destroy a uranium facility.")
    assert movie.valid?
  end

  test 'invalid movie' do
    movie = Movie.new(genre: 'TV Show',
                      year: '2020',
                      country: 'United States',
                      published_at: '2020-05-05',
                      description: "After a teenage girl's perplexing suicide, a classmate receives
                                    a series of tapes that unravel the mystery of her tragic choice.")
    assert_not movie.valid?
  end
end

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'valid movie' do
    movie = Movie.new(integer_id: 'nil',
                      title: 'Top Gun: Maverick',
                      genre: 'Action',
                      year: '2022',
                      country: 'USA',
                      published_at: '2022-05-26',
                      description: "Pete 'Maverick' Mitchell is brought back to teach a new band of TopGun academy
                                    graduates how to run a dangerous mission to destroy a uranium facility.")
    assert movie.valid?
  end
end

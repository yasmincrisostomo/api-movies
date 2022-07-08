require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_movies_url
    assert_response :success
  end

  test "should get movie title" do
    get api_v1_movies_url, params: { title: "Top Gun: Maverick" }
    assert_response :success
  end

  test "should get movie genre" do
    get api_v1_movies_url, params: { genre: "Action" }
    assert_response :success
  end

  test "should get movie year" do
    get api_v1_movies_url, params: { year: "2022" }
    assert_response :success
  end

  test "should get movie country" do
    get api_v1_movies_url, params: { country: "USA"}
    assert_response :success
  end
end

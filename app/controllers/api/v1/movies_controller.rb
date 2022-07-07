class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = params[:query].present? ? Movie.search(params[:query]) : Movie.all.order(:year)
  end
end

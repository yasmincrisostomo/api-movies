class Api::V1::MoviesController < Api::V1::BaseController
  def index
    limit = params[:limit] || 100
    offset = params[:offset] || 0
    if params[:query].present?
      @movies = Movie.search(params[:query]).limit(limit).offset(offset)
    else
      @movies = Movie.all.order(:year).limit(limit).offset(offset)
    end
    # @movies = params[:query].present? ? Movie.search(params[:query]).limit(limit).offset(offset) : Movie.all.order(:year).limit(limit).offset(offset)
  end
end

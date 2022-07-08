require 'csv'

class Api::V1::MoviesController < Api::V1::BaseController
  def index
    limit = params[:limit] || 100
    offset = params[:offset] || 0
    if params[:query].present?
      @movies = Movie.search(params[:query]).limit(limit).offset(offset)
    else
      @movies = Movie.all.order(:year).limit(limit).offset(offset)
    end
  end

  def create
    CSV.foreach(params[:file], headers: true).each do |row|
      Movie.create({  id: SecureRandom.uuid,
                      title: row['title'],
                      genre: row['type'],
                      year: row['release_year'],
                      country: row['country'],
                      published_at: row['date_added'],
                      description: row['description'] })
    end
  end
end

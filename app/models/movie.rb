class Movie < ApplicationRecord
  validates :id, uniqueness: true

  include PgSearch::Model

  pg_search_scope :search, against: %i[genre year country]
end

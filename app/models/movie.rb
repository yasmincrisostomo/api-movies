class Movie < ApplicationRecord
  validates :id, uniqueness: true
  validates :title, presence: true, uniqueness: true

  include PgSearch::Model

  pg_search_scope :search, against: %i[title genre year country]
end

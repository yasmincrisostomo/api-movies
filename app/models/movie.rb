class Movie < ApplicationRecord
  validates :integer_id, uniqueness: true

  include PgSearch::Model

  pg_search_scope :search, against: %i[title genre year country]
end

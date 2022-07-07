require 'csv'

csv_path = 'db/netflix_titles.csv'

CSV.foreach(csv_path, headers: true) do |row|
  Movie.create({
    title: row[2],
    genre: row[1],
    year: row[7],
    country: row[5],
    published_at: row[6],
    description: row[11]
  })
end

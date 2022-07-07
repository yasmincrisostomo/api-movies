require 'csv'

csv_path = File.read(Rails.root.join('lib', 'csv', 'netflix_titles.csv'))
csv = CSV.parse(csv_path, headers: true)
csv.each do |row|
  Movie.create({  title: row['title'],
                  genre: row['type'],
                  year: row['release_year'],
                  country: row['country'],
                  published_at: row['date_added'],
                  description: row['description'] })
end

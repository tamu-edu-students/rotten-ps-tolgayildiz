# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'Masumiyet', :rating => 'R',
    :release_date => '24-Oct-1997'},
  {:title => 'Kader', :rating => 'R',
    :release_date => '17-Nov-2006'},
  {:title => 'Bir Zamanlar Anadoluda', :rating => 'PG-13',
    :release_date => '23-Sep-2011'},
  {:title => 'The Golden Glove', :rating => 'NC-17',
    :release_date => '14-Jan-2020'}
]

more_movies.each do |movie|
  Movie.create!(movie) if Movie.find_by(title: movie[:title]).nil?
end
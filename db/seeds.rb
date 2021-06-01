# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
studio1 = Studio.create!(name: "54", location: "NYC")
movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MovieActor.destroy_all
Actor.destroy_all
Movie.destroy_all
Studio.destroy_all

studio1 = Studio.create!(name: "54", location: "NYC")
movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")
actor1 = Actor.create!(name: "Drew", age: 47, working: true)
actor2 = Actor.create!(name: "Barry", age: 30, working: true)
actor3 = Actor.create!(name: "Will", age: 18, working: false)
MovieActor.create!(movie_id: movie1.id, actor_id: actor1.id)
MovieActor.create!(movie_id: movie2.id, actor_id: actor2.id)
MovieActor.create!(movie_id: movie3.id, actor_id: actor3.id)

require 'rails_helper'

RSpec.describe Movie do
  describe 'relationships' do
    it {should belong_to :studio}
  end

  it 'orders by age' do
    studio1 = Studio.create!(name: "54", location: "NYC")
    movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
    movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
    movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")
    actor2 = Actor.create!(name: "Barry", age: 30, working: true)
    actor1 = Actor.create!(name: "Drew", age: 47, working: true)
    actor3 = Actor.create!(name: "Will", age: 18, working: false)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor1.id)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor2.id)

    expect(movie1.actors_sorted_by_age.first).to eq(actor1)
  end

  it 'just shows names' do
    studio1 = Studio.create!(name: "54", location: "NYC")
    movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
    movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
    movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")
    actor2 = Actor.create!(name: "Barry", age: 30, working: true)
    actor1 = Actor.create!(name: "Drew", age: 47, working: true)
    actor3 = Actor.create!(name: "Will", age: 18, working: false)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor1.id)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor2.id)

    expect(movie1.actor_names).to eq(["Barry", "Drew"])
  end
end

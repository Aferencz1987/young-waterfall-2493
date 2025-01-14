require 'rails_helper'

RSpec.describe 'movie show page' do
  it 'shows movie name location and movie titles' do
    studio1 = Studio.create!(name: "54", location: "NYC")
    movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
    movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
    movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")
    actor1 = Actor.create!(name: "Drew", age: 47, working: true)
    actor2 = Actor.create!(name: "Barry", age: 30, working: true)
    actor3 = Actor.create!(name: "Will", age: 18, working: false)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor1.id)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor2.id)
    MovieActor.create!(movie_id: movie1.id, actor_id: actor3.id)
    visit "/movie/#{movie1.id}"

    expect(page).to have_content(movie1.title)
    expect(page).to have_content(movie1.genre)
    expect(page).to have_content(movie1.creation_year)
    expect(page).to have_content(actor1.name)
    expect(page).to have_content(actor2.name)
    expect(page).to have_content(actor3.name)
  end
end

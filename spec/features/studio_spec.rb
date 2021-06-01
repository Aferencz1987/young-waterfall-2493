require 'rails_helper'

RSpec.describe 'studio show page' do
  it 'shows studio name location and movie titles' do
    studio1 = Studio.create!(name: "54", location: "NYC")
    movie1 = studio1.movies.create!(title: "Leaf", creation_year: "1979", genre: "documentary")
    movie2 = studio1.movies.create!(title: "Branch", creation_year: "1988", genre: "horror")
    movie3 = studio1.movies.create!(title: "Tree", creation_year: "2021", genre: "comedy")

    visit "/studio/#{studio1.id}"

    expect(page).to have_content(studio1.name)
    expect(page).to have_content(studio1.location)
    expect(page).to have_content(movie1.title)
    expect(page).to have_content(movie2.title)
    expect(page).to have_content(movie3.title)
  end
end

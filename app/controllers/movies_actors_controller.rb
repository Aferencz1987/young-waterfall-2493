class MoviesActorsController < ApplicationController
  def index
    @movie_actors = MoviesActor.all
  end

  def show
    @movie_actor = MoviesActor.find(params[:id])
  end
end

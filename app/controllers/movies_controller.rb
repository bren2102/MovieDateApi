class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies, status: :ok 
  end

  def show
    @movie = Movie.where(name: params[:name])
    render json: @movie, status: :ok
  end
end

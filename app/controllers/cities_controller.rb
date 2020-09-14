class CitiesController < ApplicationController
  def index
    @cities = City.all
    render json: @cities, status: :ok
  end
end

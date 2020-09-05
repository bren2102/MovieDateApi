class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(username: params[:username], movie_id: params[:movie_id], city_id: params[:city_id], date: params[:date])
    if @appointment.save
      render json: @appointment, status: :ok
    else
      render json: {error: 'Error'}
    end
  end

  def index
    @appointments = Appointment.where(username: params[:username])
    render json: @appointments, status: :ok
  end
end

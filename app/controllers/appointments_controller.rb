class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(username: params[:username],
                                   movie_name: params[:movie_name],
                                   city_name: params[:city_name],
                                   date: params[:date],
                                   price: params[:price])
    if @appointment.save
      render json: @appointment, status: :ok
    else
      render json: { error: 'Error' }
    end
  end

  def index
    @appointments = Appointment.where(username: params[:username])
    render json: @appointments, status: :ok
  end
end

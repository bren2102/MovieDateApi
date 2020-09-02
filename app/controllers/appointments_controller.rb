class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(user_id: params[:user_id], movie_id: params[:movie_id], city_id: params[:city_id], date: params[:date])
    if @appointment.save
      render json: @appointment, status: :ok
    else
      render json: {error: 'Error'}
    end
  end

  def index
    @user = Appointment.where(user_id: params[:user_id])
    @appointments = Appointment.all
  end
end

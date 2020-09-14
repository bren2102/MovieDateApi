class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.new(create_appointment)
    if @appointment.save
      render json: @appointment, status: :ok
    else
      render json: @appointment.errors.full_messages
    end
  end

  def index
    @appointments = Appointment.where(search_appointment)
    render json: @appointments, status: :ok
  end

  private

  def search_appointment
    params.permit(:username)
  end

  def create_appointment
    params.permit(:user_id, :username, :movie_name, :city_name, :date, :price)
  end
end

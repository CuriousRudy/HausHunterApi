class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointment.new
    if @appointment.save
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessible_entity
    end
  end


end

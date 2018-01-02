class Api::V1::AppointmentsController < ApplicationController

  def index
    if current_user
      # byebug
      @appointments = current_user.appointments
      if @appointments.count <= 0
        @appointments = []
      end
    else
      @appointments = Appointment.all
    end
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

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

  #show the selected appointment, for testing
  # def show
  #   byebug
  #   @appointment = Appointment.find(params[:id])
  #   render json: @appointment
  # end

  def create
    @appointment = Appointment.new
    if @appointment.save
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessible_entity
    end
  end


  #destroy the appointment, return all the user's appointments
  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.destroy
      @appointments = current_user.appointments
      render json: @appointments
    end
  end

end

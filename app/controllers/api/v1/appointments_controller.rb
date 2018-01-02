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

  def destroy
    @appointment= Appointment.find(params[:id])
    @appointment.destroy
    @appointments = Appointment.all
    render json: @appointments
  end
# t.integer "user_id" t.integer "listing_id" t.date "date" t.time "time" t.boolean "seen"
  private
  def listing_params
    params.require(:appointment).permit(:id,:user_id,:listing_id,:date,:time,:seen)
  end


end

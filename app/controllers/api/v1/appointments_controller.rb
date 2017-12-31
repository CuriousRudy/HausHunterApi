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
# t.integer "user_id" t.integer "listing_id" t.date "date" t.time "time" t.boolean "seen"
  private
  def listing_params
    params.require(:listing).permit(:street_address,:city,:state,:zip,:beds,:baths,:asking_price)
  end


end

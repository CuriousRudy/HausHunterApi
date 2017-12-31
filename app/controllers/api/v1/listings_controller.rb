class Api::V1::ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def create
    byebug
    @listing = Listing.new(listing_params)
    if @listing.save
      @users = User.all
      render json: @users
    else
      render json: @listing.errors, status: :unprocessible_entity
    end
  end
# "street_address"=>"testing", "city"=>"testing",
# "state"=>"testing", "zip"=>"1111", "beds"=>"1", "baths"=>"1", "asking_price"=>"12315"
  private
  def listing_params
    params.require(:listing).permit(:street_address,:city,:state,:zip,:beds,:baths,:asking_price)
  end

end

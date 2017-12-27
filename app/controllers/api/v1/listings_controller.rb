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
    @listing = Listing.new
    if @listing.save
      @users = User.all
      render json: @users
    else
      render json: @listing.errors, status: :unprocessible_entity
    end
  end
end

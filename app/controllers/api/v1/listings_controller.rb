class Api::V1::ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.new
    if @listing.save
      render json: @listing
    else
      render json: @listing.errors, status: :unprocessible_entity
    end
  end
end

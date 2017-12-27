class Api::V1::AuthController < ApplicationController

  def create
    # byebug
    @user = User.find_by(email: params[:email][:email])
    if @user.authenticate(params[:email][:password])
      render json: @user
    else
      render json: {error: 'Invalid User'}, status: 401
    end
  end

end

class Api::V1::AuthController < ApplicationController

  def create
    # byebug
    @user = User.find_by(email: params[:email][:email])
    if @user && @user.authenticate(params[:email][:password])
      render json: {user: @user.email, id: @user.id, full_name: "#{@user.first_name} #{@user.last_name}", token: issue_token({id: @user.id})}
    else
      render json: {error: 'Invalid User'}, status: 401
    end
  end

  def show
    user = User.find_by(id: user_id)
    if user
      render json: {user: user.email, id:user.id}
    else
      render({json: {error: 'Invalid token'}, status: 401 })
    end
  end

end

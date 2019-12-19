class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
    User.destroy(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:id, :username, :zipcode)
  end
end

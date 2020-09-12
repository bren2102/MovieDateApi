class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user, status: :ok
  end

  def show
    @user = User.where(user)
    render json: @user, status: :ok
  end

  def login
    @user = User.where(user).first
    @user ||= User.create(user)
    render json: @user, status: :ok
  end

  private

  def user
    params.permit(:name)
  end
end

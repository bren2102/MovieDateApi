class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user, status: :ok
  end
  def show
    @user = User.where(user)
    render json: @user, status: :ok
  end
  def create
    @user = User.new(name: params[:name])
    if @user.save
      render json: @user, status: :ok
    else
      render json: { error: 'Error' }
    end
  end
  def login
    @user = User.where(user).first
    if @user
      render json:@user, status: :ok
    else
      @user = User.create(user)
      render json: @user, status: :ok
    end
  end
  private

  def user
    params.permit(:name)
  end
end

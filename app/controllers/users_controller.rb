class UsersController < ApplicationController

  def user_params
    params.require(:users).permit(:name, :username, :bio, :password_digest)
  end


  def create
    @user = User.new(user_params)
    @user[:name] = params[:user][:name]
    @user[:name] = params[:user][:name]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end

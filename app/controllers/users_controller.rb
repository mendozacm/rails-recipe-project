class UsersController < ApplicationController

  

  def new
    @user = User.new
  end


  def create
    @user = User.new
    @user.name = params[:name]
    @user.username = params[:username]
    @user.bio = params[:bio]
    @user.password = params[:password_digest]
    @user.save
    redirect_to user_path(@user)
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

  private

  def user_params
    params.require(:user).permit(:name, :username, :bio)
  end

end

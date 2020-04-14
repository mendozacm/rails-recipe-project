class UsersController < ApplicationController

  def index
   
    @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def new; end

  def create
    @user = User.new
    @user[:name] = params[:user][:name]
    @user[:username] = params[:user][:username]
    @user[:bio] = params[:user][:bio]
    @user[:password] = params[:user][:password]
    @user.save
    redirect_to users_path(@user)
  end
end

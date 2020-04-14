class UsersController < ApplicationController

  def index
   
    @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.create(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to users_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio, :username, :password, :password_confirmation)
  end
end

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
    @user = User.create(user_params(:name, :bio, :username, :password, :password_confirmation))
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to controller: 'welcome', action: 'home'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:name, :bio))

    redirect_to user_path(@user)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to "/users"
  end

  

  def user_commments
    @user = User.find(params[:id])
    @comment = @user.comments
  end




  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end
end

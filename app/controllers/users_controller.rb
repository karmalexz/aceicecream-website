class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
    redirect_to login_path unless session[:user_id] == @current_user.id
  end

  def update  
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(params[:id])
  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, :address, :phone)
  end
end
class HomeController < ApplicationController
  def home
    fetch_user
  end

  def index
    @products = Product.all
  end

  def show 
    @product = Product.find params[:id]
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_path 
  end
end
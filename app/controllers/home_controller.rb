class HomeController < ApplicationController
  def home
         fetch_user #sets @current_user
  end

  def index
    @products = Product.all
  end

  def show 
    @product = Product.find params[:id]
  end
end
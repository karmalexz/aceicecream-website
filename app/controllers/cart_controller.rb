class CartController < ApplicationController
  before_action :check_if_logged_in
  def new
    @item=LineItem.create product_id: params[:product_id], quantity: 1
    redirect_to flavours_path 
  end

  def show
  end

  def index
  end
end

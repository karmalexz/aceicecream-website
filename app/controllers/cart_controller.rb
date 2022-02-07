class CartController < ApplicationController
  before_action :check_if_logged_in

  def add_item
    @item=LineItem.create product_id: params[:product_id], quantity: 1, user_id: @current_user.id 
    redirect_to flavours_path 
  end

  def update_quantity
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.update quantity: params[:quantity]
    redirect_to cart_index_path
  end

  def destroy
    @item = LineItem.find_by(product_id: params[:product_id])
    @item.destroy
    redirect_to cart_index_path
  end
end



class OrdersController < ApplicationController
  before_action :check_if_logged_in

  def index
    @orders = @current_user.orders
  end

  def show
    @order = Order.find_by(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    @current_user.line_items.order.each do |item|
      @order.line_items << item
      item.update(cart_id: nil)
    end
    @order.save
    @current_user.orders << @order
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:name, :email, :address, :pay_method, :user_id, :cart_id)
  end

end
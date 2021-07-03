class OrdersItemsController < ApplicationController
  before_action :set_order

  def create
    @orders_item = @order.orders_items.new(order_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @orders_item = @order.orders_items.find(params[:id])
    @orders_item.update_attributes(order_params)
    @orders_items = current_order.orders_items
  end

  def destroy
    @orders_item = @order.orders_items.find(params[:id])
    @orders_item.destroy
    @orders_items = current_order.orders_items
  end

  private

  def order_params
    params.require(:orders_item).permit(:product_id, :quantity)
  end

  def set_order
    @order = current_order
  end
end
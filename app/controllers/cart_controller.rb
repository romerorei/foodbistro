class CartController < ApplicationController
  def show
    @orders_items = current_order.orders_items
  end
end

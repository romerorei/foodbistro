class Order < ApplicationRecord
  has_many :orders_items
  before_save :set_subtotal

  def subtotal
    orders_items.collect { |orders_item| orders_item.valid? ? orders_item.unit_price * orders_item.quantity : 0 }.sum
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end

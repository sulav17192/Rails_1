class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

 validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  after_save :say_item_saved

  private

  def say_item_saved
    puts "OrderItem saved: #{quantity} x #{product.name}"
  end
end
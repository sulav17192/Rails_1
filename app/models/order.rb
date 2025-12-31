class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_one :shipping_detail, dependent: :destroy

  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :ordered_at, presence: true

  before_create :say_before_create
  after_update :say_after_update

  private

  def say_before_create
    puts "Creating a new order for customer ID: #{customer_id}"
  end

  def say_after_update
    puts "Order #{id} was just updated!"
  end
end
class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_one :shipping_detail, dependent: :destroy

  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :ordered_at, presence: true
end
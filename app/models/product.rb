class Product < ApplicationRecord
  belongs_to :category, optional: true   # optional: true because null is allowed for now
    has_many :order_items, dependent: :nullify   # or :destroy if you prefer

    validates : name, presence: true, uniqueness: true
    vaildate : description, presence: true
    validattes : price, presence: true, numericality: { greater_than_or_equal_to: 0}
end
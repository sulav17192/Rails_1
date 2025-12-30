class Product < ApplicationRecord
  belongs_to :category, optional: true   # optional: true because null is allowed for now
    has_many :order_items, dependent: :nullify   # or :destroy if you prefer
end
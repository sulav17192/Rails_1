class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  scope :with_orders, -> {joins(:orders).distinct}
end
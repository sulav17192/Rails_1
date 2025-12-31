class Product < ApplicationRecord
  belongs_to :category, optional: true   # optional: true because null is allowed for now
    has_many :order_items, dependent: :nullify   # or :destroy if you prefer

validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }


  before_save :say_before_save
  after_create :say_after_create

  private

  def say_before_save
    puts"Product is about to be saved: #{name}"
  end

  def say_after_create
    puts" Product was created successfully"
  end
end
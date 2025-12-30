class AddUnitPriceToOrderItems < ActiveRecord::Migration[8.1]
  def change
    add_column :order_items, :unit_price, :decimal
  end
end

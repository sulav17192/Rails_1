class AddOrderedAtToOrders < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :ordered_at, :datetime
  end
end

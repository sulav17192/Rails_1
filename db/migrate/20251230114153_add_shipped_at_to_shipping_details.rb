class AddShippedAtToShippingDetails < ActiveRecord::Migration[8.1]
  def change
    add_column :shipping_details, :shipped_at, :datetime
  end
end

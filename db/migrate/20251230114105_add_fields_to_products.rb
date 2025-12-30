class AddFieldsToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :description, :string

    # Allow NULL for now – existing products have no category yet
    add_reference :products, :category, null: true, foreign_key: true
  end
end
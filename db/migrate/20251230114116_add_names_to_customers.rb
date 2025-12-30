class AddNamesToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
  end
end

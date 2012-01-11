class AddQuantityToPurchases < ActiveRecord::Migration
  def change
     add_column :purchases, :quantity, :integer, :default => 1
  end
end

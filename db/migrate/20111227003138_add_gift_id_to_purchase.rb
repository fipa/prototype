class AddGiftIdToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :gift_id, :integer
  end
end

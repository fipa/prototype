class AddFopToPurchases < ActiveRecord::Migration
  def change
     add_column :purchases, :fop_id, :integer
  end
end

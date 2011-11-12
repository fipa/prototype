class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :offer_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end

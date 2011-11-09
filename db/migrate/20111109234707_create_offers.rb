class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.float :price
      t.integer :product_id
      t.datetime :initial_date
      t.datetime :end_date
      t.text :description

      t.timestamps
    end
  end
end

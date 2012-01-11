class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :user_id
      t.date :date
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end

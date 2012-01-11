class CreateGiftCategories < ActiveRecord::Migration
  def change
    create_table :gift_categories do |t|
      t.integer :gift_id
      t.integer :category_id

      t.timestamps
    end
  end
end

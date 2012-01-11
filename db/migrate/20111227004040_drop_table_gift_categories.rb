class DropTableGiftCategories < ActiveRecord::Migration
  def up
    drop_table :gift_categories
  end

  def down
    create_table "gift_categories", :force => true do |t|
      t.integer  "gift_id"
      t.integer  "category_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end

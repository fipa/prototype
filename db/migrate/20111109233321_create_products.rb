class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float :price
      t.integer :stock
      t.integer :company_id
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end

class Product < ActiveRecord::Base
  belongs_to  :company
  has_many    :offers
  has_many    :categories, :through => :product_categories
  has_many    :product_categories

  def has_stock
    return self.stock > 0
  end

end

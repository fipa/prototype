class Category < ActiveRecord::Base
  has_many    :products, :through => :product_categories
  has_many    :product_categories

  has_many    :gifts, :through => :gift_categories
  has_many    :gift_categories
end

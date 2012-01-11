class Gift < ActiveRecord::Base
  belongs_to :user
  
  has_many    :categories, :through => :gift_categories
  has_many    :gift_categories
end

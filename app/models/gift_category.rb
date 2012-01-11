class GiftCategory < ActiveRecord::Base
  belongs_to :gift
  belongs_to :category
end

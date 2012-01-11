class Gift < ActiveRecord::Base
  belongs_to :user
  
  has_many    :categories, :through => :gift_categories
  has_many    :gift_categories

  def recommended_offers
    offers = []
    self.categories.each do |category|
      offers << category.available_offers_between_prices(self.min_price, self.max_price)
    end
    return offers.flatten
  end

end

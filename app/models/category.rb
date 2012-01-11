class Category < ActiveRecord::Base
  has_many    :products, :through => :product_categories
  has_many    :product_categories

  has_many    :gifts, :through => :gift_categories
  has_many    :gift_categories

  def available_offers_between_prices(min_price, max_price)
    offers = []
    self.products.each do |product|
      if product.has_stock
        offer = product.active_offer
        if offer.price >= min_price and offer.price <= max_price
          offers << offer
        end

      end

    end
    return offers
  end

end

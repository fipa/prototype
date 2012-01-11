class Offer < ActiveRecord::Base
  belongs_to :product

  def self.get_featured_offers(limit = 4)
    featured_offers = []
    Offer.find(:all).each do |offer|
      last if featured_offers.size == limit
      featured_offers << offer if offer.is_active
    end
  end

  def is_active
    now = Time.now
    return (self.initial_date > now and self.end_date < now and self.product.has_stock)
  end

  def regular_price
    return self.product.price
  end

  def product_description
    return self.product.description
  end

  def product_image_url
    return self.product.image_url
  end

end

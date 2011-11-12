class Product < ActiveRecord::Base
  belongs_to  :company
  has_many    :offers

  def self.featured_products(limit = 4)
    Product.find(:all, :conditions => 'stock > 1', :limit => limit)
  end

  def active_offers
    offers = []
    now = Time.now
    self.offers.find(:all).each do |offer|
      offers << offer if offer.initial_date < now and offer.end_date > now
    end
    return offers
  end

  def main_offer
    return self.active_offers.first unless self.offers.empty?
  end

  def offered_price
    return self.main_offer.price unless self.main_offer.nil?
  end

end

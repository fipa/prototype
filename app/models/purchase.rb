class Purchase < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user
  belongs_to :form_of_payment
  belongs_to :gift

  validates :user_id, :presence => true
  validates :offer_id, :presence => true
  validates :status, :presence => true

  def self.new_status
    return 'NEW'
  end

  def offer_description
    return self.offer.product_description
  end

  def price
    return self.offer.price
  end

  def image_url
    return self.offer.product_image_url
  end

end

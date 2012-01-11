module PurchasesHelper

  def new_purchase_path(offer_id)
    { :controller => 'purchases', :action => 'new', :offer_id => offer_id }
  end

  def standard_price_format(price)
    return number_to_currency(price, :locale => :cl, :precision => 0, :delimiter => ".")
  end

end

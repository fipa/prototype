module OffersHelper

  def details(offer)
    render :partial => 'offers/details', :locals => {:offer => offer}
  end

end


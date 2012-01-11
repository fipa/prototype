module ApplicationHelper

  def header
    'test header'
  end

  def footer
    'test footer'
  end

  def right_menu
    'test right_menu'
    #<div id="sos_gift"><%= sos_gift %></div>
  end

  def sos_gift
    'test sos_gift'
  end

  def featured_offers
    render :partial => 'offers/featured', :locals => {:offers => Offer.get_featured_offers}
  end

end

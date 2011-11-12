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

  def featured_products
    render :partial => 'products/featured', :locals => {:products => Product.featured_products}
  end

end

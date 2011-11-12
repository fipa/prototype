module ProductsHelper

  def details(product)
    render :partial => 'products/details', :locals => {:product => product}
  end

end

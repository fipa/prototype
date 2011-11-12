class PagesController < ApplicationController

  def home
    @title = 'Gifton'
  end

  def contact
    @title = 'Contacto'
  end

  def how_it_works
    @title = '¿Cómo funciona?'
  end

  def who_we_are
    @title = '¿Quiénes somos?'
  end

end

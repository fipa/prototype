class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    #TODO mover el session user_id a la instancia de loggeo
    session.clear
    session[:user_id] = User.find_by_email('fernandopobletearrau@gmail.com')

    @current_user ||= User.find_by_id(session[:user_id])
  end

end

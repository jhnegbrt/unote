class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    return nil unless session[:session_token]
    @current_user = User.find_by(session_token: session[:session_token])
  end

  def login
  end

  def logout
  end

  def logged_in?
  end


end

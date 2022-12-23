class ApplicationController < ActionController::Base
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  protected
  def authenticate_user!
    @current_user = User.find_by_id(session[:user_id])
  end
end

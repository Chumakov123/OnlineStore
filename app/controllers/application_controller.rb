class ApplicationController < ActionController::Base
  def authenticate_user
    @current_user = User.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end

  def non_authenticate_user
    @current_user = User.find_by_id(session[:user_id])
    redirect_to login_path if @current_user.present?
  end

  def check_admin
    @current_user = User.find_by_id(session[:user_id])
    @admin_user = AdminUser.find_by_email(@current_user.email)
    redirect_to root_path unless @admin_user.present?&&@admin_user.present?
  end

  protected
  def authenticate_user!
    @current_user = User.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end
end

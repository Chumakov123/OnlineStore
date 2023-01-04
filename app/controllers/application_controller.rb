class ApplicationController < ActionController::Base
  def authenticate_user
    if User.count > 0
      @current_user = User.find_by_id(session[:user_id])
      redirect_to login_path unless @current_user.present?
    else
      redirect_to login_path
    end
  end

  def non_authenticate_user
    if User.count > 0
      @current_user = User.find_by_id(session[:user_id])
      redirect_to root_path if @current_user.present?
    else
      redirect_to root_path
    end
  end

  def check_admin
    if User.count > 0 && AdminUser.count > 0
      @current_user = User.find_by_id(session[:user_id])
      @admin_user = AdminUser.find_by_email(@current_user.email)
      redirect_to root_path unless @current_user.present?&&@admin_user.present?
    else
      redirect_to root_path
    end
  end

  protected
  def authenticate_user!
    @current_user = User.find_by_id(session[:user_id])
    redirect_to login_path unless @current_user.present?
  end
end

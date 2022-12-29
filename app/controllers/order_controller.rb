class OrderController < ApplicationController
  def new
    @user = User.find_by_id(session[:user_id])
  end
  def to_pay
    Order.where(:users_id => session[:user_id]).delete_all
    redirect_to order_path
  end
  def destroy
    Order.destroy(params[:id])
    redirect_to order_path
  end
end

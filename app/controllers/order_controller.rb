class OrderController < ApplicationController
  def new
    @user = User.find_by_id(session[:user_id])
  end
end

class UserController < ApplicationController
  def new
    @user = User.find_by_id(session[:user_id])
    #@user = User.new
  end

  def edit; end

end

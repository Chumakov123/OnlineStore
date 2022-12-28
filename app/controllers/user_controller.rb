class UserController < ApplicationController
  def new
    @user = User.find_by_id(session[:user_id])
    #@user = User.new
  end

  def edit; end

  def update
    if @user.update user_params
      flash[:success] = t '.success'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end

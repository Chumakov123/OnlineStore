class RegisterController < ApplicationController
  def new

  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      #redirect_to
    else
      flash[:error] = user.errors.full_messages
      redirect_to register_path
    end
  end

  private
  def user_params
    params.require(:user)
          .permit(:email,
                  :password)
  end
end

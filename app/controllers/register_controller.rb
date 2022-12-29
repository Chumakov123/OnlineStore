class RegisterController < ApplicationController
  def new
    non_authenticate_user
  end
  def create
    user = User.new(user_params)
    if user.save
      if User.count == 1
        admin = AdminUser.new(user_params)
        admin.save
      end
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to register_path
    end
  end

  private
  def user_params
    params.require(:user)
          .permit(:login,
                  :email,
                  :phone,
                  :password,
                  :password_confirmation
                  )
  end
end

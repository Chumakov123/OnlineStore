# frozen_string_literal: true

class PasswordResetsController < ApplicationController
  before_action :set_user, only: %i[edit update]
  def create
    @user = User.find_by email: params[:email]

    if @user.present?
      @user.set_password_reset_token

      PasswordResetMailer.with(user: @user).reset_email.deliver_later
    end

    flash[:success] = t '.success'
  end

  def edit

  end

  def update
    if @user.update user_params
      flash[:success] = t '.success'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def set_user
    @user = User.find_by email: params[:user][:email],
                         reset_password_token: params[:user][:reset_password_token]
  end
end

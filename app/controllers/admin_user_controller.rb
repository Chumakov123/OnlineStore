class AdminUserController < ApplicationController
  def new
    check_admin
  end
end

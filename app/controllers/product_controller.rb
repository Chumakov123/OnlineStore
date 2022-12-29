class ProductController < ApplicationController
  def index
    @product = Product.all
  end
  def new

  end

  def create

  end
  def add_to_order
    order = Order.new(:price => params[:price],:users_id => params[:user_id],:products_id => params[:product_id])
    unless order.save
      flash[:error] = order.errors.full_messages
    end
    flash[:notice] = 'Successfully checked in'
    redirect_to product_path
  end

  private

  def product_params

  end
end

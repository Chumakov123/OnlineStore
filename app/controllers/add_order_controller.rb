class AddOrderController < ApplicationController

  def create
    #@product = Product.all

    order = Order.new(order_params)
    unless order.save
      flash[:error] = order.errors.full_messages
    end
    # redirect_to add_order_path
  end

  private

  def order_params
    params.require(:order)
          .permit(:date,
                  :price,
                  :users_id,
                  :products_id
          )
  end

end

class AddProductController < ApplicationController
  def new

  end
  def create
    product = Product.new(product_params)
    if product.save
      redirect_to root_path
    else
      flash[:error] = product.errors.full_messages
      redirect_to add_product_path
    end
  end

  private

  def product_params
    params.require(:product)
          .permit(:title,
                  :description,
                  :price,
                  :category_id
                  )
  end
end

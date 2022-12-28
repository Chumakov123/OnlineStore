class AddProductController < ApplicationController
  def new

  end
  def create
    product = Product.new(product_params)
    unless product.save
      flash[:error] = product.errors.full_messages
    end
    redirect_to add_product_path
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

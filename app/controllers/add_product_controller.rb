class AddProductController < ApplicationController
  def new
    check_admin
  end
  def create
    product = Product.new(product_params)
    unless product.save
      flash[:error] = product.errors.full_messages
    end
    redirect_to add_product_path
  end

  def change
    #Product.update(params)
    #redirect_to add_product_path
  end

  def destroy
    Product.destroy(params[:id])
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

  def destroy_params
    params.require(:product)
          .permit(:id)
  end
end

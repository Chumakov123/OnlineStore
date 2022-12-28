class ProductController < ApplicationController
  def index
    @product = Product.all
  end
  def new

  end

  def create

  end
  def destroy

  end

  private

  def product_params

  end
end

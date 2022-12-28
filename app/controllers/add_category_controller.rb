class AddCategoryController < ApplicationController
  def new

  end
  def create
    category = Category.new(category_params)
    if category.save
      redirect_to root_path
    else
      flash[:error] = category.errors.full_messages
      redirect_to add_category_path
    end
  end

  private

  def category_params
    params.require(:category)
          .permit(:title
          )
  end
end

class AddCategoryController < ApplicationController
  def new

  end
  def create
    category = Category.new(category_params)
    unless category.save
      flash[:error] = category.errors.full_messages
    end
    redirect_to add_category_path
  end

  private

  def category_params
    params.require(:category)
          .permit(:title
          )
  end
end

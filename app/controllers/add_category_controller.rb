class AddCategoryController < ApplicationController
  def new
    check_admin
  end

  def destroy
    Category.destroy(params[:id])
    redirect_to add_category_path
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

  def destroy_params
    params.require(:category)
          .permit(:id
          )
  end
end

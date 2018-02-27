class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    category = Category.create(category_params)
    render json: category
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    if @category.save
      render json: @category
    else
      render json: {errors: @category.errors.full_messages}, status: 422
    end
  end


  private
  def category_params
    params.permit(:name)
  end
end

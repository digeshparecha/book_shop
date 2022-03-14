class Admin::CategoriesController < ApplicationController
  layout "admin"
  load_and_authorize_resource param_method: :category_params
  before_action :set_admin_category, only: %i[ show edit update destroy ]
 
  def index
    @categories = Category.all
  end

  def show; end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path(@category), notice: "Category was successfully created." 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path(@category), notice: "Category was successfully updated." 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_path, notice: "Category was successfully destroyed." 
  end

  private
    def set_admin_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end

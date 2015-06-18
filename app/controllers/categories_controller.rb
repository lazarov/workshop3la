class CategoriesController < ApplicationController
  before_action :check_if_user_admin?, only: [:new, :edit, :update, :create, :destroy]

  expose(:categories)
  expose(:category)
  expose(:product) { Product.new }

  def check_if_user_admin?
    if !current_user.admin?
      redirect_to('/users/sign_in')
    end
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.category = Category.new(category_params)

    if category.save
      redirect_to category, notice: 'Category was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if category.update(category_params)
      redirect_to category, notice: 'Category was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
  end

  private
    def category_params
      params.require(:category).permit(:name, :description)
    end
end

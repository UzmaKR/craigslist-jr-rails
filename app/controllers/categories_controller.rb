class CategoriesController < ApplicationController

# attr_reader :new 

def index
  @categories = Category.all
end

def show
  @category = Category.find(params[:id])
end

def new
  @category = Category.new
end

def create
  @category = Category.new(params[:category])
    if @category.save
      render :show

      # render category_path(@category.id)
    else
      render :new
    end
end

end

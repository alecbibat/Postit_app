class CategoriesController < ApplicationController

# index
# show
# new
# create
# edit
# update

def index
  @category = Category.all
end

def show
@category = Category.find(params[:id])
@post = @category.posts.all
end

def new
  @category = Category.new()
end

def create
  @category = Category.new(category_params)

  if @category.save
    redirect_to categories_path
  else
    render new_category_path
  end
end

def edit
end

def update
end

private

  def category_params
    params.require(:category).permit!
  end

end
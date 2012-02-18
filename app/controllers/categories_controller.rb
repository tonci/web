class CategoriesController < InheritedResources::Base
  def new
    @categories = Category.all
    new!
  end
end

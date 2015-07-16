class CategoriesController < ApplicationController

  def show
    category = Category.all
    render :json => category.to_json
  end

end
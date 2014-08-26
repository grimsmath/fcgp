class CategoriesController < ApplicationController
  around_filter :catch_not_found

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by!(name: params[:id])
  end

  private
    def catch_not_found
      yield
    rescue ActiveRecord::RecordNotFound
      redirect_to categories_path, :flash => { :error => "Category not found." }
    end
end
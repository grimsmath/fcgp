class Admin::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!
  layout "admin"

  respond_to :html, :js

  def index
    @categories = Category.all
  end

  def show
  end

  def edit
  end

  def edit_multiple
    @categories = Category.find(params[:cat_ids])
  end

  def new
    @category = Category.new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:title, :enabled, :parent_id)
    end
end

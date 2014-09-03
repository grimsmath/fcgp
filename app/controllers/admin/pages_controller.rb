class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show]
  before_action :authenticate_member!
  layout false

  def index
    @pages = Page.all
    render json: @pages
  end

  def show
    render json: @page
  end

  def create
    render success: true
  end

  def update
    render success: true
  end

  def destroy
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name,
                                   :title,
                                   :sub_title,
                                   :icon,
                                   :parent_id,
                                   :user_id,
                                   :body,
                                   :enabled)
    end
end
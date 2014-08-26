class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    redirect_to not_found_path unless @page
  end
end
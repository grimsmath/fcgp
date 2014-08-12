class HomeController < ApplicationController

  def index
    @featured = Vendor.where(featured: true).take(8)
  end
end

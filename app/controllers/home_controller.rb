class HomeController < ApplicationController

  def index
    @listings = Vendor.all
  end
end

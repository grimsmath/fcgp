class HomeController < ApplicationController

  def index
    @featured = Vendor.where(featured: true).take(8)
  end

  def search
    p 'Home Search called'
  end

  def contact
    @contact = Contact.new
  end

end

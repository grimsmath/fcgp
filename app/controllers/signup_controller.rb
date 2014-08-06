class SignupController < ApplicationController

  def vendor
    @vendor = Vendor.new
  end

  def individual
    @individual = Member.new
  end

end

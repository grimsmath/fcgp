class SignupController < ApplicationController
  def vendor
    @vendor = Vendor.new
    @vendor.addresses.build
    @vendor.categories.build
    @vendor.tags.build
  end

  def individual
    @individual = Member.new
  end
end

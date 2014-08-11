class SignupController < ApplicationController
  def vendor
    @vendor = Vendor.new
    @vendor.addresses.build
  end

  def vendor_create

  end

  def member
    @member = Member.new
  end

  def member_create

  end
end

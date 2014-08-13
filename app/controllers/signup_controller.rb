class SignupController < ApplicationController
  before_action :authenticate_member!, except: [:index, :member]
  def vendor
    @vendor = Vendor.new
    @vendor.addresses.build
  end

  def member
    @member = Member.new
    @member.addresses.build
  end
end

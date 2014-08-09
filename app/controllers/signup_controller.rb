class SignupController < ApplicationController
  include Devise::Controllers::Helpers

  def vendor
    @vendor = Vendor.new
  end

  def individual
    @individual = Member.new
  end
end

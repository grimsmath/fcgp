class SignupController < ApplicationController
  def vendor
    if member_signed_in?
      @vendor = Vendor.new
      @vendor.addresses.build
    else
      redirect_to new_member_session_path(:passthru => request.fullpath),
        notice: "You may need to create a user account first.  If so, please click on the \"New Member\" button below.  Otherwise, please sign-in."
    end
  end

  def vendor_create

  end

  def member
    @member = Member.new
  end

  def member_create

  end
end

class SignupController < ApplicationController
  def vendor
    if user_signed_in?
      @vendor = Vendor.new
      @vendor.addresses.build
    else
      redirect_to new_user_session_path(:passthru => request.fullpath),
        notice: "You may need to create a user account first.  If so, please click on the \"New User\" button below.  Otherwise, please sign-in."
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

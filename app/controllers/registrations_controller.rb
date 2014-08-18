class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  # GET /members/sign_up
  def new
    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_profile
    respond_with self.resource
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u|
        u.permit(:email,
                 :password,
                 :password_confirmation,
                 :profile_attributes => [:first_name,
                                         :middle_initial,
                                         :last_name,
                                         :gender,
                                         :birth_month,
                                         :birth_day,
                                         :phone_home,
                                         :phone_work,
                                         :phone_mobile,
                                         :enabled,
                                         :accepted,
                                         :address_attributes => [:street1, :street2, :city, :state, :postal_code]])
      }
    end
end
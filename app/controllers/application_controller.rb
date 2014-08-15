class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :html, :json

  before_filter :store_location
  after_filter :set_csrf_cookie_for_ng

  include Pundit # For authorization

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def store_location
    session[:passthru] = params[:passthru] if params[:passthru]
  end

  def redirect_back_or_default(default)
    session[:passthru] || root_path
  end

  def after_sign_in_path_for(resource_or_scope)
    redirect_back_or_default(resource_or_scope)
  end

  protected
    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end

    def is_admin?
      member_signed_in? && current_member.admin? && params[:admin] == 'true' || false
    end

    def resolve_layout
      return "application"

      # case member_signed_in?
      #   when true
      #     if current_member.admin?
      #       "admin"
      #     else
      #       "application"
      #     end
      #   else
      #     "application"
      # end
    end

  private
    def user_not_authorized
      flash[:error] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
end

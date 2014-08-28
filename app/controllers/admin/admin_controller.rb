class Admin::AdminController < ApplicationController
  before_action :authenticate_member!
  layout "admin"

  def index
  end
end
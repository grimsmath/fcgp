class AdminController < ApplicationController
  before_action :authenticate_member!
  layout :resolve_layout

  def index

  end
end

class Admin::AlertsController < ApplicationController
  before_action :set_alert, only: [:show, :update]
  before_action :authenticate_member!
  layout false

  def index
    @alerts = Alert.all
    render json: @alerts
  end

  def show
    render json: @alert
  end

  def new
    @alert = Alert.new
    render json: @alert
  end

  def create
    @alert = Alert.create!(alert_params)
    render json: @alert
  end

  def update
    @alert.update_attributes(alert_params)
    render nothing: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert
      @alert = Alert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_params
      params.require(:alert).permit(:title, :message, :begins, :ends)
    end
end
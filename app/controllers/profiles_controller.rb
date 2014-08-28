class ProfilesController < ApplicationController
  before_action :authenticate_member!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  def index
    @profiles = Profile.all
  end

  def show
    @vendors = Vendor.my_members
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find_or_create_by(member_id: current_member.id)
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_path, notice: 'Your profile was successfully updated.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find_or_create_by(member_id: current_member.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name,
                                      :middle_initial,
                                      :last_name,
                                      :phone,
                                      :gender,
                                      :birth_month,
                                      :birth_day,
                                      :member_id,
                                      :location_attributes => [:id, :street1, :street2, :city, :state, :postal_code])
    end
end
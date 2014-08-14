class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!, except: [:index, :new, :create, :show]
  layout :resolve_layout

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
    @vendor.addresses.build
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    # We need to relate the current member to the new vendor object
    vendor.members.build(vendor_id: @vendor.id, member_id: current_member.id)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Vendor was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url, notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name,
                                     :description,
                                     :subscription_date,
                                     :signup_date,
                                     :logo,
                                     :paid,
                                     :enabled,
                                     :url,
                                     :email,
                                     :latitude,
                                     :longitude,
                                     :phone_work,
                                     :phone_alt,
                                     :phone_fax,
                                     :featured,
                                     :accepted,

                                     :mon_open, :tue_open, :wed_open, :thu_open, :fri_open, :sat_open, :sun_open,
                                     :mon_close, :tue_close, :wed_close, :thu_close, :fri_close, :sat_close, :sun_close,

                                     logo_atributes:              [:id, :logo,                                                        :_destroy],
                                     addresses_attributes:        [:id, :street1,       :street2,     :city,    :state, :postal_code, :_destroy],
                                     certifications_attributes:   [:id, :title,         :awarded,     :image,   :notes,               :_destroy],
                                     badges_attributes:           [:id, :title,         :awarded,     :image,                         :_destroy],
                                     photos_attributes:           [:id, :title,         :description, :image,                         :_destroy],
                                     category_vendors_attributes: [:id, :category_id,   :vendor_id,                                   :_destroy],
                                     tags_attributes:             [:id, :title,         :name,                                        :_destroy])
    end
end

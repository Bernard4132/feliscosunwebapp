class ShippingordersController < ApplicationController
  before_action :set_shippingorder, only: [:show, :edit, :update, :destroy]

  # GET /shippingorders
  # GET /shippingorders.json
  def index
    @shippingorders = Shippingorder.all
    @search = Shippingorder.ransack(params[:q])
    @shippingorders = @search.result
  end

  # GET /shippingorders/1
  # GET /shippingorders/1.json
  def show
  end

  # GET /shippingorders/new
  def new
    @shippingorder = Shippingorder.new
  end

  # GET /shippingorders/1/edit
  def edit
  end

  # POST /shippingorders
  # POST /shippingorders.json
  def create
    @shippingorder = Shippingorder.new(shippingorder_params)
    @shippingorder.user = current_user

    respond_to do |format|
      if @shippingorder.save
        format.html { redirect_to @shippingorder, notice: 'Shippingorder was successfully created.' }
        format.json { render :show, status: :created, location: @shippingorder }
      else
        format.html { render :new }
        format.json { render json: @shippingorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shippingorders/1
  # PATCH/PUT /shippingorders/1.json
  def update
    respond_to do |format|
      if @shippingorder.update(shippingorder_params)
        format.html { redirect_to @shippingorder, notice: 'Shippingorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @shippingorder }
      else
        format.html { render :edit }
        format.json { render json: @shippingorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippingorders/1
  # DELETE /shippingorders/1.json
  def destroy
    @shippingorder.destroy
    respond_to do |format|
      format.html { redirect_to shippingorders_url, notice: 'Shippingorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shippingorder
      @shippingorder = Shippingorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shippingorder_params
      params.require(:shippingorder).permit(:ourref, :fromcomp, :yourref, :shippingline, :containerno, :isocode, :festatus, :sealno, :blno, :drivername, :trucknumber, :driverid, :truckcompany, :condition, :user_id, :gate)
    end
end

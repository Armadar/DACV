class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  include GeneralHelper
  
  def something
    services_path
  end
  # GET /services
  # GET /services.json
  def index
    @services = Service.all
    @services.each do |service|
      
      if service.driver != nil
        service.driverName = getProfileName(service.driver)
      else
        service.driverName = '(Pending)'
      end
      if service.user_id != nil
        service.userName = getProfileName(service.user_id)
      else
        service.userName = ''
      end
    end
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json

  def addAsFavorite
   
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'It was added as favorite.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:from, :to, :day, :driver, :tipoVehiculo, :qPassengers, :user_id)
    end
end

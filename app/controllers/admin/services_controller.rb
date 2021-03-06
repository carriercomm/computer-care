class Admin::ServicesController < Admin::AdminController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @options = @service.service_options
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes(params[:service])
    @service.save
    redirect_to admin_service_path(@service.id)
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to admin_services_path
    else
      render 'new'
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    redirect_to admin_services_path
  end
end
class PagesController < ApplicationController
  
  def pending_services
    @Services = Service.where("driver = " + current_user.getid.to_s + " and day >= now()")
  end

  def my_services
    @Service = Service.find(params[:id])
  end
  
  def validate
      new_service_path
  end
  
  def historyservicies
    @Services = Service.where("driver = " + current_user.getid.to_s)
  end
  
end

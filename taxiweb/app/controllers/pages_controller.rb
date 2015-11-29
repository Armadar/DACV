class PagesController < ApplicationController
  def pending_services
    #@Services = Service.all
    
    #@Services = Service.find_each(user: current_user.getid)
    @Services = Service.where("user_id = " + current_user.getid.to_s)
  end

  def my_services
  end
end

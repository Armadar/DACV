class Service < ActiveRecord::Base
  attr_accessor :driverName, :userName
  belongs_to :user
  
    def driverName
      @driverName
    end
    
    def userName
      @userName
    end
    
    def dayFormat
      today = Time.new.in_time_zone('US/Pacific')
      date =''
      
      if self.day.strftime("%d") == today.strftime("%d")
        date = "Today " + self.day.strftime("%H:%M")
      else
        date = self.day.strftime("%d-%m  %H:%M")
      end
        date
    end
    
    def hasDriver
      self.driver!=nil
    end

  def hourservice
      time = self.day
      hour_aux = time.hour
      hour_to_s = ""
      min_to_s = ""
      am_pm = ""
      hour_to_s = time.hour.to_s
      min_to_s = time.min.to_s
      if hour_aux < 12
          am_pm = "am"
      else
          if hour_aux == 12
              hour_aux = 1
          else
              hour_aux = hour_aux - 12
          end
          am_pm = "pm"
      end
      if hour_aux < 10
          hour_to_s =  "0" + hour_aux.to_s
      end
      if time.min < 10
          min_to_s =  "0" + time.min.to_s
      end
      hour_to_s + ":" + min_to_s + " " + am_pm
  end
  
  def customerName
      myProfile = Profile.find_by(user_id: self.user_id)
      myProfile.first_name + " " + myProfile.last_name
  end
  
  def confirm
    self.confirmed = true
    self.save
  end
  
  def setFavorite
    self.favorite = !self.favorite 
    self.save
  end
  
end
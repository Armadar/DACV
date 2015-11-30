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
      self.driver==nil
    end
end
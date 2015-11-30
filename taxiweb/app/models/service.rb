class Service < ActiveRecord::Base
  attr_accessor :driverName
  belongs_to :user
  
    def driverName
      @driverName
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
end
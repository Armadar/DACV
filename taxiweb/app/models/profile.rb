class Profile < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  belongs_to :user
  # Include default devise modules. Others available are:
  #:confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
    def full_name
      fn = self.first_name==nil ? '' : self.first_name
      ln = self.last_name==nil ? '' : self.last_name
      fn +  " " + ln
    end
end
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  #after_initialize :set_default_role
  #after_create :set_default_profile
         
  enum roles: [:user, :operator, :driver, :admin]
  has_one :profile;
  
  #def set_default_role
  #  self.role ||= :user
  #end
  
  def default_profile
    if self.profile.nil?
      profile  = Profile.new
      profile.user = self
      profile.save
      self.save
    end
    self.profile
  end
  
  def friendly_name
    self.email
    #if self.try(:profile).first_name.nil?
    #  self.email
    #else
    #  self.profile.first_name + " " + self.profile.last_name
    #end
  end
  
end

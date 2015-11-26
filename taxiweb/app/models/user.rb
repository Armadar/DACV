class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  after_initialize :set_default_role
  after_create :set_default_profile
         
  enum role: [:user, :operator, :driver, :admin]
  has_one :profile
  
  def set_default_role
    self.role ||= :user
  end
  
  def set_default_profile
      profile = Profile.new
      profile.user = self
      profile.save
  end
  
    def friendly_name
      if self.try(:profile).first_name.nil?
        self.email + self.role
      else
        self.profile.full_name
      end
      # self.email + self.role
    end
    
    def something
    end
end
module GeneralHelper
    
    def getProfileName(id)
         o = Profile.find_by user_id:id
         o.full_name
    end
end
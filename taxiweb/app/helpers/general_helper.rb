module GeneralHelper
    
    def getProfileName(userid)
         o = Profile.find_by user_id:userid
         o.full_name
    end
end
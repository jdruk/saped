class Course < ActiveRecord::Base
    
    def self.avalaible
        Course.all
    end
    
    def members_length
        User.where(course: self, pay: true).count
    end
    
    def members_confirmed
        User.where(course: self, pay: true)
    end
    
end

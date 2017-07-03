class Course < ActiveRecord::Base
    
    def self.avalaible
        Course.all
    end
end

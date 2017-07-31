class Course < ActiveRecord::Base
    
    has_many :users
    
    def self.avalaible
        courses = User.group(:course).count
        courses = courses.map{|key,_| key if courses[key] <=35}.compact
        courses << Course.first
    end
    
    def members_length
        User.where(course: self, pay: true).count
    end
    
    def members_confirmed
        User.where(course: self, pay: true)
    end
    
end

class Course < ActiveRecord::Base
    
    has_many :users
    
    def self.avalaible
        courses = Course.all
        courses = courses.to_a.select {|course| course.users.where(pay: true).count < 35}
        courses << Course.first
    end
    
    def members_length
        User.where(course: self, pay: true).count
    end
    
    def members_confirmed
        User.order(:name).where(course: self, pay: true)
    end
    
end

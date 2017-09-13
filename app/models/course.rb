class Course < ActiveRecord::Base
    
    has_many :users
    
    def self.avalaible
        c = Array.new
        minicurso_rociane = Course.where name: 'Arte e Preservação Ambiental – Beleza Permanente'
        minicurso_patricia = Course.where name: 'Aprender a aprender na prática: a neurociência da aprendizagem'
        Course.all.each do |course|
            if course.equal?(Course.first)
                c << course
            end
            if course.equal?(minicurso_rociane) or course.equal?(minicurso_patricia)
                c << Course.valida(course, 18)
            end
            c << Course.valida(course, 33)
        end
        return c
    end
    
    def members_length
        User.where(course: self, pay: true).count
    end
    
    def members_confirmed
        User.order(:name).where(course: self, pay: true)
    end
    
    def self.valida course, quantidade
        if is_available_vacancies(course, quantidade)
            course
        else 
            nil
        end 
    end
    
    def self.is_available_vacancies course, quantidade
        course.users.where(pay: true).count < quantidade
    end
end

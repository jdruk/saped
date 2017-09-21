class Course < ActiveRecord::Base
    
    has_many :users
    
    def self.avalaible
        c = Array.new
        minicurso_rociane = Course.where(name: 'Arte e Preservação Ambiental – Beleza Permanente').first
        minicurso_patricia = Course.where(name: 'Aprender a aprender na prática: a neurociência da aprendizagem').first
        minicurso_nenhum = Course.where(name: 'Nenhum').first
        Course.all.each do |course|
            if course.eql?(minicurso_nenhum)
                c << course
                puts " \n validando  #{course.name} "
            end
            if course.eql?(minicurso_rociane) or course.eql?(minicurso_patricia)
                puts "\n validando com 18 #{course.name}"
                c << Course.valida(course, 18)
            else
                c << Course.valida(course, 33)
                puts '33'
            end 
        end
        c.delete(nil)
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

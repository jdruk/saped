class Theme < ActiveRecord::Base
    
    def users
        User.trabalho_oral(theme: self, pay: true).where.not(:article=> nil)
    end
    
    def self.available
        Theme.where.not(id: Theme.first) 
    end
end

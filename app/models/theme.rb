class Theme < ActiveRecord::Base
    
    def users
        User.order(:article_title).where(theme: self, pay: true).where.not(:article=> nil)
    end
    
    def self.available
        Theme.where.not(id: Theme.first) 
    end
end

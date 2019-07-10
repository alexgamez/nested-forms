class Country < ApplicationRecord

    # Column name is required 
    validates :name, presence: true

    # Name always in upper case
    before_save :name_upcase    

    def name_upcase    
        self.name = self.name.upcase
    end
end

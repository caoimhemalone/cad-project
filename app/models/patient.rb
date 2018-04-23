class Patient < ApplicationRecord
     belongs_to :user, optional: true
     
    #  For Search
    def self.search(search)
        if search
           where(["lastname LIKE ?","%#{search}%"]) #compare firstname with the argument
        else
            #all
            @patients = Patient.all
        end
    end
end

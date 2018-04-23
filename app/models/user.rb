class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :patients
  
   #  For Search
    def self.search(search)
        if search
           where(["lastname LIKE ?","%#{search}%"]) #compare firstname with the argument
        else
            #all
            @users = User.all
        end
    end
 
end

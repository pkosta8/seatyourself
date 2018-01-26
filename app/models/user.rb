class User < ApplicationRecord
   has_secure_password

   validates :email, presence :true
   validates :email, uniquenss: { case_sensitive: false }

   has_many :restaurant
   has_many :reservations
end

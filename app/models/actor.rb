class Actor < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :production_companies, through: :bookings
  has_secure_password

end

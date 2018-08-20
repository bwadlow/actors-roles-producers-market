class ProductionCompany < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :actors, through: :bookings
end

class ProductionCompany < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :actors, through: :bookings
  has_secure_password

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :username, uniqueness: true
  validates :address, presence: true
end

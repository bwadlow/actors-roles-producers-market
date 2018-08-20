class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor
  belongs_to :production_company
end

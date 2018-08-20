class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor, optional: true
  belongs_to :production_company
end

class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor, optional: true
  belongs_to :production_company

  scope :sex_input, -> { where(sex: 'sex_input') }

  scope :teens, -> { where(:age) }
end

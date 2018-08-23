class Actor < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :production_companies, through: :bookings

  def field_name_uninherited
    self.id['field_name']
  end

  def field_name_uninherited=(value)
    self.id['field_name']=value
  end

end

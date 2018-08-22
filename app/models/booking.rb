class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor, optional: true
  belongs_to :production_company

  def self.search(search)
    if search
      booking = Booking.find_by(sex: search.downcase)
      if booking
        self.where(sex: search.downcase)
      else
        Booking.all
      end
    else
      Booking.all
    end
  end

end

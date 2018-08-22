class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor, optional: true
  belongs_to :production_company

  def self.sex_search(sex_search)
    if sex_search
      booking = Booking.find_by(sex: sex_search.downcase)
      if booking
        self.where(sex: sex_search.downcase)
      else
        Booking.all
      end
    else
      Booking.all
    end
  end

  def self.age_search(age_search)
    if age_search
      booking = Booking.find_by(age: age_search)
      if booking
        self.where(age: age_search)
      else
        Booking.all
      end
    else
      Booking.all
    end
  end

end

class Booking < ApplicationRecord
  has_many :auditions
  belongs_to :actor, optional: true
  belongs_to :production_company

  scope :by_sex, lambda { |sex| where(:sex => sex)}
  scope :by_age, lambda { |age| where(:age => age)}

  def age_query_upper
    age_query += 5
  end

  def age_query_lower
    age_query -= 5
  end

  def self.sex_search(sex_query)
    if sex_search
      booking = Booking.find_by(sex: sex_query.downcase)
      if booking
        self.where(sex: sex_query.downcase)
      else
        Booking.all
      end
    else
      Booking.all
    end
  end

  def self.age_search(age_query)
    if age_query
      booking = Booking.find_by(age: age_query)
      if booking
        self.where(age: age_query)
      else
        Booking.all
      end
    else
      Booking.all
    end
  end

  def hire_actor
  end

end

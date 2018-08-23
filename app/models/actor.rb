class Actor < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :production_companies, through: :bookings
  has_secure_password

  def password=(plaintext_pw)
    self.password_digest = BCrypt::Password.create(plaintext_pw)
  end
end

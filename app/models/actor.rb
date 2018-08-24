class Actor < ApplicationRecord
  has_many :auditions
  has_many :bookings
  has_many :production_companies, through: :bookings
  has_secure_password

  validates :username, uniqueness: true
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 17 }

  def password=(plaintext_pw)
    self.password_digest = BCrypt::Password.create(plaintext_pw)
  end
end

class Audition < ApplicationRecord
  belongs_to :actor
  belongs_to :production_company
  belongs_to :booking
end

class AddProductionCompanyToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :production_company, foreign_key: true
  end
end

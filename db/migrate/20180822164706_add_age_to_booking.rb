class AddAgeToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :age, :integer
  end
end

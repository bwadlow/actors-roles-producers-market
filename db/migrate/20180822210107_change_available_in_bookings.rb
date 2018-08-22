class ChangeAvailableInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :available?
    add_column :bookings, :available, :boolean
  end
end

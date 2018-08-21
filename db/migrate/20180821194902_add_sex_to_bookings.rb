class AddSexToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :sex, :string
  end
end

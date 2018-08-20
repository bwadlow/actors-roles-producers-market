class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :salary
      t.integer :duration_days
      t.string :show_name
      t.string :role_name
      t.boolean :available?
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end

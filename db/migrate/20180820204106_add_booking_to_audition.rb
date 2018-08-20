class AddBookingToAudition < ActiveRecord::Migration[5.2]
  def change
    add_reference :auditions, :booking, foreign_key: true
  end
end

class AddTimeAndDateToAuditions < ActiveRecord::Migration[5.2]
  def change
    add_column :auditions, :time, :time
    add_column :auditions, :date, :date
  end
end

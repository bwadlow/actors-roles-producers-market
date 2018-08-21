class DeleteTimeFromAuditions < ActiveRecord::Migration[5.2]
  def change
    remove_column :auditions, :time
  end
end

class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :address
      t.datetime :time
      t.references :actor, foreign_key: true
      t.references :production_company, foreign_key: true

      t.timestamps
    end
  end
end

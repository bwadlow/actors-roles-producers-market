class AddAddressToProductionCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :production_companies, :address, :string
  end
end

class AddUsernameAndPasswordDigestToProductionCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :production_companies, :username, :string
    add_column :production_companies, :password_digest, :string
  end
end

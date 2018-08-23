class AddUsernameAndPasswordDigestToActors < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :username, :string
    add_column :actors, :password_digest, :string
  end
end

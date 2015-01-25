class AddClientIpToLetters < ActiveRecord::Migration
  def change
    add_column :letters, :client_ip, :string
  end
end

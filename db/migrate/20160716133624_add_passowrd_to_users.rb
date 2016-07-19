class AddPassowrdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :passowrd_digest, :string
  end
end

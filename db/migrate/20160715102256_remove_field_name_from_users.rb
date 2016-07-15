class RemoveFieldNameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :passowrd_digest, :string
  end
end

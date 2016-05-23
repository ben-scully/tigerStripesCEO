class AddWofExpiryAndRegoExpirtyToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :wof_expiry, :string
    add_column :employees, :rego_expiry, :string
  end
end

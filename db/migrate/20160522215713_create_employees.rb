class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :dlicenceNumber
      t.date :dlicenceExpiry

      t.timestamps null: false
    end
  end
end

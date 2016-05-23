class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :phone

      t.timestamps null: false
    end
  end
end

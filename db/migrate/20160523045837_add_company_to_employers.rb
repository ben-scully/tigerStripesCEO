class AddCompanyToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :company, :string
  end
end

class AddFirstNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_street_number, :string
    add_column :users, :company_street_address, :string
    add_column :users, :company_street_address_2, :string
    add_column :users, :company_state, :string
    add_column :users, :company_zip, :string
    add_column :users, :company_phone, :string
    add_column :users, :company_sales_phone, :string
    add_column :users, :company_sales_email, :string
  end
end

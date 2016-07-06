class AddCompanyNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company_name, :string
    add_index :users, :company_name
  end
end

class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.text :company_name
      t.string :company_street_number
      t.string :company_street_address
      t.string :company_street_address_2
      t.string :company_state
      t.string :company_zip
      t.string :company_phone
      t.string :company_sales_phone
      t.string :company_sales_email

      t.timestamps
    end
  end
end

json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :company_street_number, :company_street_address, :company_street_address_2, :company_state, :company_zip, :company_phone, :company_sales_phone, :company_sales_email
  json.url company_url(company, format: :json)
end

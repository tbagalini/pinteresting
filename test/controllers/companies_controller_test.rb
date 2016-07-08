require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { company_name: @company.company_name, company_phone: @company.company_phone, company_sales_email: @company.company_sales_email, company_sales_phone: @company.company_sales_phone, company_state: @company.company_state, company_street_address: @company.company_street_address, company_street_address_2: @company.company_street_address_2, company_street_number: @company.company_street_number, company_zip: @company.company_zip } }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { company_name: @company.company_name, company_phone: @company.company_phone, company_sales_email: @company.company_sales_email, company_sales_phone: @company.company_sales_phone, company_state: @company.company_state, company_street_address: @company.company_street_address, company_street_address_2: @company.company_street_address_2, company_street_number: @company.company_street_number, company_zip: @company.company_zip } }
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end

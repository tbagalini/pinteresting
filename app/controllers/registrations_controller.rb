class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:company_name,:first_name, :last_name, :email, :password, :password_confirmation, :company_street_number, :company_street_address, :company_street_address_2, :company_state, :company_zip, :company_phone, :company_sales_phone, :company_sales_email, :company_comment)
  end

  def account_update_params
    params.require(:user).permit(:company_name,:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :company_street_number, :company_street_address, :company_street_address_2, :company_state, :company_zip, :company_phone, :company_sales_phone, :company_sales_email, :company_comment)
  end
end
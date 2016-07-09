class AddCompanyCommentToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company_comment, :text
  end
end

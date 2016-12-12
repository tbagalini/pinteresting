require 'test_helper'

class AllTurboUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_turbo_users_index_url
    assert_response :success
  end

end

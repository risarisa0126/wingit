require 'test_helper'

class Admins::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_users_index_url
    assert_response :success
  end

end

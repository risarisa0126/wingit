require 'test_helper'

class Tourists::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tourists_rooms_show_url
    assert_response :success
  end

end

require 'test_helper'

class Guides::RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get guides_rooms_show_url
    assert_response :success
  end

end

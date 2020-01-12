require 'test_helper'

class Tourists::TouristsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourists_tourists_index_url
    assert_response :success
  end

  test "should get show" do
    get tourists_tourists_show_url
    assert_response :success
  end

  test "should get mypage" do
    get tourists_tourists_mypage_url
    assert_response :success
  end

end

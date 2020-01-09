require 'test_helper'

class Guides::GuidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guides_guides_index_url
    assert_response :success
  end

  test "should get show" do
    get guides_guides_show_url
    assert_response :success
  end

  test "should get mypage" do
    get guides_guides_mypage_url
    assert_response :success
  end

end

require "test_helper"

class PlayHouseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get play_house_index_url
    assert_response :success
  end

  test "should get new" do
    get play_house_new_url
    assert_response :success
  end
end

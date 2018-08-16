require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get restaurants_update_url
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get photo" do
    get static_pages_photo_url
    assert_response :success
  end

end

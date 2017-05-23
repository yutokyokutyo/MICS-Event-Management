require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get message" do
    get static_pages_message_url
    assert_response :success
  end

  test "should get interview" do
    get static_pages_interview_url
    assert_response :success
  end

  test "should get photo" do
    get static_pages_photo_url
    assert_response :success
  end

  test "should get join" do
    get static_pages_join_url
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get message" do
    get message_path
    assert_response :success
  end

  test "should get interview" do
    get interview_path
    assert_response :success
  end

  test "should get photo" do
    get photo_path
    assert_response :success
  end

  test "should get join" do
    get join_path
    assert_response :success
  end

end

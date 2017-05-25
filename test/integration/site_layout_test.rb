require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", message_path
    assert_select "a[href=?]", interview_path
    assert_select "a[href=?]", photo_path
    assert_select "a[href=?]", join_path
  end
end

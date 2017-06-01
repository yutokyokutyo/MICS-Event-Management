require 'test_helper'

class EventsInterfaceTest < ActionDispatch::IntegrationTest

  test "event interface" do
    get new_event_path
    assert_select 'input[type="submit"]'
    title = "Sportsday"
    sub_title = "justdoit"
    assert_difference 'Event.count', 1 do
      post events_path, params: { event: { title: title, sub_title: sub_title } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match title, response.body
  end
end

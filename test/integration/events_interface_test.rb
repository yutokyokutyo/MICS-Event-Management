require 'test_helper'

class EventsInterfaceTest < ActionDispatch::IntegrationTest

  test "event interface" do
    # イベント作成
    get new_event_path
    assert_select 'input[type="submit"]'
    title = "Sportsday"
    sub_title = "justdoit"
    description = "enjoy!"
    location = "Nagoya Station"
    start_time = "2017-09-19 07:03:30 -0700"
    end_time = "2017-09-19 07:03:30 -0700"
    capacity = 100
    assert_difference 'Event.count', 1 do
      post events_path, params: { event: { title: title,
                            sub_title: sub_title,
                            description: description,
                            location: location,
                            start_time: start_time,
                            end_time: end_time,
                            capacity: capacity } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match title, response.body
    # イベント更新
    get edit_event_path(events(:one))
    assert_select 'input[type="submit"]'
    patch event_path(events(:one)), event: { title: title,
                            sub_title: sub_title,
                            description: description,
                            location: location,
                            start_time: start_time,
                            end_time: end_time,
                            capacity: capacity }
    assert_redirected_to event_manage_path
    follow_redirect!
    assert_match title, response.body
    # イベントを削除
    get event_manage_path
    assert_select 'a', text: 'delete'
    assert_defference 'Event.count', -1 do
      delete event_path(Event.first)
    end
  end
end

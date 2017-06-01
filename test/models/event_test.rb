require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "order should be most recent first" do
    assert_equal events(:most_recent), Event.first
  end
end

require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "Notifications_Test" do
    post '/notifications', params: {
      phone_number: '7869995696',
      alert_message: 'hi'
    }
  end
end

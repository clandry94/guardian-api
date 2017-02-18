require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  
  test "Notifications_Text_Test" do
    post '/notifications/send_message', params: {
      phone_number: '7869995696',
      alert_message: 'hi'
    }
  end
  test "Notifications_Email_Test" do
    post '/notifications/send_email', params: {
      recipient: 'josephpendev@gmail.com',
      alert_message: 'HI'
    }
  end
end

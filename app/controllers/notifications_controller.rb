class NotificationsController < ApplicationController

  def send_message
    twilio_number = ENV['TWILIO_NUMBER']
    client = Twilio::REST::Client.new  ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    client.messages.create(
      from: twilio_number,
      to:   params[:phone_number],
      body: params[:alert_message]
      # US phone numbers can make use of an image as well
      # media_url: image_url
    )
  end

  def send_email
    alert_message = params[:alert_message]
    recipient = params[:recipient]
      # Sends email to user when user is created.
      UserNotifierMailer.sample_email({ recipient: recipient, alert_message: alert_message }).deliver

  end
end
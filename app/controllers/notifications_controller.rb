class NotificationsController < ApplicationController

  def send_message
    twilio_number = ENV['TWILIO_NUMBER']
    client = Twilio::REST::Client.newgem  ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    client.messages.create(
      from: twilio_number,
      to:   params[:phone_number],
      body: params[:alert_message]
      # US phone numbers can make use of an image as well
      # media_url: image_url
    )
  end
end
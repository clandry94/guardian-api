class UserNotifierMailer <ActionMailer::Base
  default from: "NOREPLY@guardian-api.herokuapp.com"

  def sample_email(email)
    recipient = email[:recipient]
    alert_message = email[:alert_message]
    mail(to: recipient, subject: 'Alert', body: alert_message)
  end
end


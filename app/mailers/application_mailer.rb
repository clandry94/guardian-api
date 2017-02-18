class ApplicationMailer < ActionMailer::Base
  default from: 'NOREPLY@guardian-api.herokuapp.com'
  layout 'mailer'

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end

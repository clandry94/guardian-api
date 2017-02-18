class UserNotifierMailer <ActionMailer::Base
  default from: "NOREPLY@guardian-api.herokuapp.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end


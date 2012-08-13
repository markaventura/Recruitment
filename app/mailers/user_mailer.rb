class UserMailer < ActionMailer::Base
  default from: "railscasts@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(empprofile)
    @empprofile = "Hi"

    mail to: "to@example.org", subject: "Sign Up Confirmation"
  end
end

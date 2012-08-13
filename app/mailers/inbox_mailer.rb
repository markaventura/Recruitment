class InboxMailer < ActionMailer::Base
  default from: "markaventura@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inbox_mailer.sigup_confirmation.subject
  #
  def sigup_confirmation(inbox)
    @inbox = inbox

    mail to: inbox.email, subject: "signup confirmation"
  end
end

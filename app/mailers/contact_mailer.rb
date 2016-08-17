class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_request.subject
  #
  def contact_request(msg)
    @msg = msg

    mail to: "sam@impactstud.io", from: msg.email
  end
end

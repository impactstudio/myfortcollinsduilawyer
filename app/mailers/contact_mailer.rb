class ContactMailer < ApplicationMailer
  default to: "sam@impactstud.io"

  def contact_confirmation(msg)
    @msg = msg
    
    mail from: @msg.email , subject: @msg.subject, body: @msg.content
  end
end

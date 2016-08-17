class ContactMailer < ApplicationMailer
  def contact_confirmation
    mail to: 'sam@impactstud.io', subject: "Contact Confirmation"
  end
end

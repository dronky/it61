class SubscriberMailer < ApplicationMailer
  default :from => 'it61@test.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def event_email(email, event_title)
    @event_title = event_title
    mail( :to => email,
          :subject => 'Event is closer than ever' )
  end
end

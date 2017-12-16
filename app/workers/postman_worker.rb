class PostmanWorker
  include Sidekiq::Worker

  def perform(email, event_title)
    SubscriberMailer.event_email(email, event_title).deliver
  end
end

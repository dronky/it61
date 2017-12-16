class SubscribersController < ApplicationController
  after_action :add_to_the_email_queue, on: :create

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to root_path
    end
  end

  private

  def add_to_the_email_queue
    PostmanWorker.perform_at(Subscriber.last.event.started_at.prev_day, Subscriber.last.email, Subscriber.last.event.title)
  end

  def subscriber_params
    params.permit(:email, :event_id)
  end
end

class Subscriber < ApplicationRecord
  belongs_to :event

  def delivery_at
    event.started_at - Setting.subscription_delivery_days.value.days
  end
end

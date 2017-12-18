class Setting < ApplicationRecord
  def self.subscription_delivery_days
    find_by(setting: :subscription_delivery_days)
  end
end

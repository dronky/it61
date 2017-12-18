class Admin::SettingsController < ApplicationController
  before_action :authorize

  def index
  end

  def set_delivery_days
    Setting.subscription_delivery_days.update(value: params[:value].to_i)
    redirect_to admin_settings_path
  end
end

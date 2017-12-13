class Admin::EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to [:admin, @event]
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :cover, :started_at, :organizer_id, place_attributes: [:city, :address])
  end
end

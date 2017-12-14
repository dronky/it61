class Admin::EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy]
  before_action :authorize

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: 'Event has been updated'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :cover, :started_at, :organizer_id, place_attributes: [:city, :address])
  end
end

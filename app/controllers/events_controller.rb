class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def ics_calendar
    @event = Event.find(params[:id])
    calendar = Icalendar::Calendar.new
    place = @event.place
    date_start = Icalendar::Values::DateTime.new @event.started_at, tzid: Time.zone.name

    calendar.event do |e|
      e.dtstart = date_start
      e.dtend = date_start + 5.hours
      e.summary = @event.title
      e.description = @event.description
      e.location = place.address
    end

    calendar.publish
    send_data calendar.to_ical
  end
end

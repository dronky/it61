class EventsController < ApplicationController
  def index
    @events = Event.all.ordered_by_date
    @events = @events.with_any_tags(params[:tag]) if params[:tag]
    @events = @events.page(params[:page])
    @search = @events.ransack(params[:q])
    @events = @search.result(distinct: true) if params[:q]
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

  def search_result

  end
end

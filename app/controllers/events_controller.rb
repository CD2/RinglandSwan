class EventsController < ApplicationController

  def index
    @page = Page.find_by(machine_name: 'whats_on_events')
    @events = Event.all
  end

end

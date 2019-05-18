class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find_by(id: params[:id])
    if @event
      @counts = Count.where(event_id: @event.id)
    end
  end
  
  
end

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
  
  def new
  end
  
  def create
    @event = Event.new(name: params[:name])
    if @event.save
      redirect_to("/events/index")
    else
      render("/events/new")
    end
  end
  
  def count
    @count = Count.new(event_id: params[:id])
    if @count.save
      redirect_to("/events/#{params[:id]}")
    else
      render("/events/show")
    end
  end
  
end

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  end
  
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path, :notice => "Event Successfully Created"
    else
      render "new"
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :description, :venue, :date, :start_time, :end_time, :ticket_price)
  end
end

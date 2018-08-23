class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @sports = policy_scope(Sport)

    if params[:query].present? #all events displayed if searched with no input

      @events = policy_scope(Event).search_address(params[:query])
      if params[:date_from].present?
        d = params[:date_from].split("-").map {|x| x.to_i}
        @events = @events.select{ |event| event.date >= Date.new(d[0], d[1], d[2]) }
      end
      if params[:date_to].present?
        d = params[:date_to].split("-").map {|x| x.to_i}
        @events = @events.select{ |event| event.date <= Date.new(d[0], d[1], d[2]) }
      end
    else
      @events = policy_scope(Event)
      if params[:date_from].present?
        d = params[:date_from].split("-").map {|x| x.to_i}
        @events = @events.select{ |event| event.date >= Date.new(d[0], d[1], d[2])  }
      end
      if params[:date_to].present?
        dt = params[:date_to].split("-").map {|x| x.to_i}
        @events = @events.select{ |event| event.date <= Date.new(dt[0], dt[1], dt[2]) }
      end
    end

  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
    @event.user = @user
    authorize @event
    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :date, :intensity, :price, :address, :photo, :capacity)
  end
end

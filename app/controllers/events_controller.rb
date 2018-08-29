class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @sports = policy_scope(Sport)

    if params[:address].present? #all events displayed if searched with no input
      @events = policy_scope(Event).search_address(params[:address])
      set_search_params
      set_markers
    else
      @events = policy_scope(Event)
      set_search_params
      set_markers
    end
  end

  def show
    authorize @event
    sport = @event.sport
    @post = Post.new
    authorize @post
    @reply = Reply.new
    authorize @reply
    @participation = Participation.new
    @events = sport.events.limit(3)
    # authorize @participation
    @markers = [{
        lat: @event.latitude,
        lng: @event.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { event: @event }) },
      }]
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

  def reply_params
    params.require(:reply).permit(:content)
  end

  def set_search_params
    @events = @events.select{ |event| event.date >= Date.today }
    if params[:date_from].present?
      d = params[:date_from].split(" ")[0].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date >= Date.new(d[0], d[1], d[2]) }
    end
    if params[:date_from].present?
      dd = params[:date_from].split(" ")[2].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date <= Date.new(dd[0], dd[1], dd[2]) }
    end
    if params[:free].present?
      @events = @events.select{ |event| event.price == 0 }
    end
  end


  def set_markers
    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { event: event }) }
      }
    end
  end

end

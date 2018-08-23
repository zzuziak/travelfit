class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @sports = policy_scope(Sport)

    if params[:address].present? #all events displayed if searched with no input
      @events = policy_scope(Event).search_address(params[:address])
      set_search_params
    else
      @events = policy_scope(Event)
      set_search_params
    end
    set_markers
    #
    # respond_to do |format|
    #   format.html { render 'events/index' }
    #   format.js
    # end

  end


  def show
    authorize @event
    @post = Post.new
    authorize @post
    @reply = Reply.new
    authorize @reply
    @participation = Participation.new
    # authorize @participation
    @markers = [{
        lat: @event.latitude,
        lng: @event.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { event: @event }) },
      }]
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_search_params
    if params[:date_from].present?
      d = params[:date_from].split(" ")[0].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date >= Date.new(d[0], d[1], d[2]) }
    end
    if params[:date_to].present?
      d = params[:date_from].split(" ")[2].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date <= Date.new(d[0], d[1], d[2]) }
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
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { event: event }) },
      }
    end
  end

end

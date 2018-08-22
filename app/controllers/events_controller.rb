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

    respond_to do |format|
      format.html { render 'events/index' }
      format.js
    end

  end


  def show
    authorize @event
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_search_params
    if params[:date_from].present?
      d = params[:date_from].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date >= Date.new(d[0], d[1], d[2]) }
    end
    if params[:date_to].present?
      d = params[:date_to].split("-").map {|x| x.to_i}
      @events = @events.select{ |event| event.date <= Date.new(d[0], d[1], d[2]) }
    end
    if params[:free].present?
      @events = @events.select{ |event| event.price == 0 }
    end
  end

end

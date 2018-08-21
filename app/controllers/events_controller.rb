class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def show
    authorize @event
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end
end

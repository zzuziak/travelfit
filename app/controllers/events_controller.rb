class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @sports = policy_scope(Sport)
  end

end

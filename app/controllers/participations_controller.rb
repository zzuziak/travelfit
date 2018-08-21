class ParticipationsController < ApplicationController
  def index
  @participations = policy_scope(Participation).where(user_id: current_user.id)
  end
end

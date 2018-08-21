class ParticipationsController < ApplicationController
before_action :set_user, only: [:new, :create, :index, :update, :requests]
before_action :set_job, only: [:new, :create]
before_action :set_participation, only: [ :update, :destroy ]


  def index
  @participations = policy_scope(Participation).where(user_id: current_user.id)
  authorize @participations
  end

  def new
  @Participation = Participation.new
  authorize @participation
  end

   def update
    @Participation.update(participation_params)
    authorize @Participation
    redirect_to requests_path
  end

  def destroy
    @participation.destroy
    authorize @participation
    redirect_to participations_path
  end

  private

  def participation_params
    params.require(:participation).permit(:status)
  end

  def set_user
    @user = current_user
  end

   def set_event
    @event = Event.find(params[:event_id])
  end

  def set_participation
    @participation = Participation.find(params[:id])
  end
end

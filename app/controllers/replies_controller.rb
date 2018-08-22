class RepliesController < ApplicationController
  before_action :set_event, only: [:new, :create]
  before_action :set_post, only: [:new, :create]

  def new
    @reply = reply.new
    authorize @reply
  end

  def create
    @user = current_user
    @reply = Reply.new(reply_params)
    authorize @reply
    @reply.user = @user
    @reply.post = @post
    if @reply.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private
  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def reply_params
    params.require(:reply).permit(:content)
  end
end

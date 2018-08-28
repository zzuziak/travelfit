class RepliesController < ApplicationController
  before_action :set_event, only: [:new, :create]
  before_action :set_post, only: [:new, :create]

  def new
    @reply = Reply.new
    authorize @reply
    raise
  end

  def create
    @user = current_user
    @reply = Reply.new(reply_params)
    authorize @reply
    @posts = @event.posts
    @reply.user = @user
    @reply.post = @post
    if @reply.save!
      respond_to do |format|
        format.html { redirect_to event_path(@event) }
        format.js
        # raise
      end
    else
      respond_to do |format|
        format.html { render 'events/show' }
        format.js
        # raise
      end
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

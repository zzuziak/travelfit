class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    authorize @user
    @events = current_user.participations
    @user_sports = current_user.user_sports
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end

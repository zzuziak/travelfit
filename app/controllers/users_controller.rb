class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    authorize @user
    @events = current_user.participations
    @user_sport = UserSport.new
    @user_sports = @user.user_sports
  end

  # def update
  #   @user.update(user_params)
  #   authorize @user
  # end

  # def edit
  #   authorize @user
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

   def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end

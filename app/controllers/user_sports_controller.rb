class UserSportsController < ApplicationController
before_action :set_user, only: [:show, :create, :update]

  def show
    @user_sport = UserSport.new
    authorize @user_sport
  end

  def create
    @user_sport = UserSport.new(user_sport_params)
    authorize @user_sport
    @sports = policy_scope(Sport)
    @user_sport.user = @user
    @user_sport.sport = Sport.find(params[:user_sport][:sport])
    @user_sport.save!
    redirect_to user_path(@user)
  end

  def update
    @user_sport = UserSport.find(params[:id])
    @user_sport.sport = Sport.find(params[:user_sport][:sport])
    authorize @user_sport
    if @user_sport.update(user_sport_params)
      respond_to do |format|
        format.html {redirect_to user_path(@user)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render :show}
        format.js
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end


  def user_sport_params
    params.require(:user_sport).permit(:level, :favourite)
  end

end

class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @user_response = UserResponse.new()
    authorize @activity
  end

  def index
    @activities = policy_scope(Activity)
  end
end

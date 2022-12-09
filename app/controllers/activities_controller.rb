class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @user_response = UserResponse.new()
    authorize @activity
  end

  def index
    @activities = policy_scope(Activity)
  end

  def results
    @profile = User.find(params[:user_id])
    @activity = Activity.find(params[:id])

    # find the activity_questions
    @activity_questions = @activity.activity_questions

    # authorize @profile with the ActivityPolicy
    authorize @profile, policy_class: ActivityPolicy
  end
end

class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find(params[:id])
    @user_response = UserResponse.new()
    authorize @activity
  end

  def index
    @activities = policy_scope(Activity)
    if params[:query].present?
      @activities = Activity.search_by_title_and_type(params[:query])
    else
      @activities = Activity.all
    end
  end

  def results
    @profile = User.find(params[:user_id])
    @activity = Activity.find(params[:id])
    @teacher_comment = TeacherComment.new

    # find the activity_questions
    @activity_questions = @activity.activity_questions

    # authorize @profile with the ActivityPolicy
    authorize @profile, policy_class: ActivityPolicy
  end
end

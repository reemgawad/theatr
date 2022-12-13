class ActivitiesController < ApplicationController
  before_action :update_availability, only: :index

  def show
    @activity = Activity.find(params[:id])
    @user = current_user
    @user_response = UserResponse.new()
    authorize @activity
  end

  def index
    @activities = policy_scope(Activity)
    if params[:query].present?
      @activities = Activity.where(available: true).search_by_title_and_type(params[:query])
    else
      @activities = Activity.where(available: true)
    end
  end

  def results
    @profile = User.find(params[:user_id])
    @activity = Activity.find(params[:id])
    @teacher_comment = TeacherComment.new
    @user_response = UserResponse.new()

    # find the activity_questions
    @activity_questions = @activity.activity_questions

    # authorize @profile with the ActivityPolicy
    authorize @profile, policy_class: ActivityPolicy
  end

  private

  def update_availability

  end
end

class ActivitiesController < ApplicationController
  before_action :set_activities, only: :index
  before_action :update_badge_status, only: :show

  def show
    @activity = Activity.find(params[:id])
    @user = current_user
    @user_response = UserResponse.new()
    authorize @activity
  end

  def index
    # Moved code to method set_activities to be reusable
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

  def set_activities
    @activities = policy_scope(Activity)
    if params[:query].present?
      @activities = Activity.search_by_title_and_type(params[:query])
    else
      @activities = Activity.all
    end
  end

  def update_badge_status
    # If activity_type == Review
    # Look at the badges associated
    # for each badge, check if today is >= user.classroom.date
    # if yes, change the badge's status to available
    set_activities
    @activities.each do |activity|
      if activity.activity_type == "Review"
        activity.badges.each do |badge|
          if Date.today >= badge.user.classroom.date
            badge.available!
          end
        end
      end
    end
  end
end

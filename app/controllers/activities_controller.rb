class ActivitiesController < ApplicationController
  before_action :update_badge_status, only: :show
  before_action :set_activities, only: :index

  def show
    @activity = Activity.find(params[:id])
    @user = current_user
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
    @badge = Badge.find_by(user: @profile, activity: @activity)
    @teacher_comment = TeacherComment.new
    @user_response = UserResponse.new()

    # find the activity_questions
    @activity_questions = @activity.activity_questions

    # authorize @profile with the ActivityPolicy
    authorize @profile, policy_class: ActivityPolicy
  end

  private

  def set_activities
    if current_user.badges.where(status: 'completed').count == 0
      @unlocked_activities = Activity.where(level: 1)
      @locked_activities =  Activity.where(("level = ? or level = ? or level = ?"), '2', '3', '4')
    elsif current_user.badges.where(status: 'completed').count >= 4
      @unlocked_activities = Activity.all
    elsif current_user.badges.where(status: 'completed').count >= 3
      @unlocked_activities = Activity.where(("level = ? or level = ? or level = ?"), '1', '2', '3')
      @locked_activities =  Activity.where(level: 4)
    elsif current_user.badges.where(status: 'completed').count >= 1
      @unlocked_activities = Activity.where(("level = ? or level = ?"), '1', '2')
      @locked_activities =  Activity.where(("level = ? or level = ? "), '3', '4')
    end
  end

  def update_badge_status
    # If activity_type == Review
    # Look at the badges associated
    # for each badge, check if today is >= user.classroom.date
    # if yes, change the badge's status to available
    @activity = Activity.find(params[:id])
    if @activity.activity_type == "Review"
      @activity.badges.each do |badge|
        if Date.today >= badge.user.classroom.date
          badge.available!
        end
      end
    end
  end
end

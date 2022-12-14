class ActivitiesController < ApplicationController
  before_action :update_badge_status, only: :show
  before_action :create_badge, only: :show
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
    @teacher_comment = TeacherComment.new
    @user_response = UserResponse.new()

    # find the activity_questions
    @activity_questions = @activity.activity_questions

    # authorize @profile with the ActivityPolicy
    authorize @profile, policy_class: ActivityPolicy
  end

  private

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

  def create_badge
    @badge = Badge.badge_exist(current_user, Activity.find(params[:id])).first

    unless @badge
      @badge = Badge.new
      @badge.user = current_user
      @badge.activity = Activity.find(params[:id])
      Activity.find(params[:id]).activity_type == 'Review'  ? @badge.status = 'unavailable' : @badge.status = 'available'
      @badge.save
    end

  end
end

class BadgesController < ApplicationController
  # after_action :verify_authorized, except: [:submitted]

  def completed
    @badge = Badge.find(params[:id])
    authorize @badge

    @badge.status = "completed"

    if @badge.save
      if current_user.teacher
        redirect_to classroom_path(current_user.classroom), notice: "The activity is completed"
      else
        redirect_to profile_path(current_user)
      end
    end
  end

  def submitted
    @badge = Badge.find(params[:id])
    authorize @badge
    @activity = @badge.activity
    @user_responses = UserResponse.where(user: current_user)

    arr = []

    @activity.activity_questions.each do |q|
      @user_responses.each do |ur|
        arr << ur if ur.activity_question == q
      end
    end

    if @activity.activity_type.name == "Video Essay"
      @badge.status = "submitted"
      @badge.save
      redirect_to profile_path(current_user), notice: "Thanks for your submission!"
    else
      if @activity.question_amount == arr.length
        @badge.status = "submitted"
        @badge.save
        redirect_to results_path(current_user, @activity), notice: "You've completed the quiz!"
      else
        redirect_to results_path(current_user, @activity), notice: "Please fill out all the questions!"
      end
    end

  end
end

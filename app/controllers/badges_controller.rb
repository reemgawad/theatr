class BadgesController < ApplicationController
  after_action :verify_authorized, except: [:marked]

  def completed
    @badge = Badge.find(params[:id])

    @badge.status = "completed"
    @badge.save
  end

  def marked
    @badge = Badge.find(params[:id])
    @activity = @badge.activity
    @user_responses = UserResponse.where(user: current_user)

    arr = []


    @activity.activity_questions.each do |q|
      @user_responses.each do |ur|
        if ur.activity_question == q
          arr << ur
        end
      end
    end

    if @activity.question_amount == arr.length
      @badge.status = "marked"
      @badge.save
      redirect_to results_path(current_user, @activity), notice: "The quiz is completed"
    else
      redirect_to results_path(current_user, @activity), notice: "Please fill out all the questions"
    end

  end
end

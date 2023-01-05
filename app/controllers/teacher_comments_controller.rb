class TeacherCommentsController < ApplicationController
  before_action :set_user, only: [ :create, :update ]

  def create
    @teacher_comment = TeacherComment.new(teacher_comment_params)
    @teacher_comment.teacher = current_user

    authorize @teacher_comment

    if @teacher_comment.save
      redirect_to results_path(@user, @activity)
    else
      render 'activities/results', status: :unprocessable_entity
    end
  end

  def update
    @teacher_comment = TeacherComment.find(params[:id])
    @teacher_comment.update(teacher_comment_params)
    if @teacher_comment.save!
      redirect_to results_path(@user, @activity)
    else
      render 'activities/results', status: :unprocessable_entity
    end
    authorize @teacher_comment
  end

  private

  def teacher_comment_params
    params.require(:teacher_comment).permit(:text, :user_response_id)
  end

  def set_user
    # find user and activity to redirect to same page, we will need java to stop refresh
    # here as well
    @user_response = UserResponse.find(params[:user_response_id])
    @user = @user_response.user
    @activity = @user_response.activity_question.activity
  end
end

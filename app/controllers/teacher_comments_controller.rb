class TeacherCommentsController < ApplicationController
  before_action :set_user, only: [ :create ]

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

  private

  def teacher_comment_params
    params.require(:teacher_comment).permit(:text, :user_response_id)
  end

  def set_user
    @user_response = UserResponse.find(params[:user_response_id])
    @user = @user_response.user
    @activity = @user_response.activity_question.activity
  end
end

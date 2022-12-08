class UserResponsesController < ApplicationController
  before_action :set_activity, only: :create

  def create
    @user_response = UserResponse.new(user_response_params)
    @user_response.activity = @activity
    @user_response.user = current_user
    if @user_response.save
      redirect_to activity_path(@activity)
    else
      render 'activities/show', status: :unprocessable_entity
    end
  end

  private

  def user_response_params
    params.require(:user_response).permit(:text)
  end

  def set_activity
    @activity_question = ActivityQuestion.find(params[:id])
  end
end

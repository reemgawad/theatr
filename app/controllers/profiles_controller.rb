class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user, policy_class: ProfilePolicy
  end

  def toggle
    user = User.find(params[:id])

    user.teacher = !user.teacher
    user.save
  end
end

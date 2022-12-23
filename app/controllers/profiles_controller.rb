class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])

    @badges = Badge.where("user_id = ? and (status = ? or status = ?)", @user, 4, 2)
    authorize @user, policy_class: ProfilePolicy
  end

  def toggle
    user = User.find(params[:id])

    user.teacher = !user.teacher
    user.save
  end
end

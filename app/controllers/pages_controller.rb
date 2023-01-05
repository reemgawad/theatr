class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @students = User.where(teacher: false)
    @user_response = UserResponse.new()
  end

  def play
    @markers = [lat: 45.49721, lng: -73.57862 ]
  end

  def dashboard
    @users = User.where(admin: false).order(first_name: :asc)
  end
end

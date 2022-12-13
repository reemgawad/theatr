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
end

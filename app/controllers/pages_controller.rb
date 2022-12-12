class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
    @students = User.where(teacher: false)
    @user_response = UserResponse.new()
  end

  def play
  end
end

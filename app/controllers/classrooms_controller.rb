class ClassroomsController < ApplicationController
  def show
    @user = current_user
    @classroom = Classroom.find(params[:id])
    @teacher = User.find_by(classroom: @classroom, teacher: true)
    @students = User.where(classroom: @classroom)
    authorize @user, policy_class: ClassroomPolicy
  end
end

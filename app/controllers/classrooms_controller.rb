class ClassroomsController < ApplicationController
  def show
    @user = current_user
    @classroom = Classroom.find(params[:id])
    @teacher = User.find_by(classroom: @classroom, teacher: true)
    @students = User.where(classroom: @classroom, teacher: false)
    authorize @user, policy_class: ClassroomPolicy
    set_color
  end

  def set_color
    @color = {
      unavailable: 'red',
      available: 'blue',
      started: 'orange',
      marked: 'purple',
      completed: 'green'
    }
  end
end

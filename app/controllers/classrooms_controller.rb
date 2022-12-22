class ClassroomsController < ApplicationController
  def show
    @user = current_user
    @classroom = Classroom.find(@user.classroom_id)
    @teacher = User.find_by(classroom: @classroom, teacher: true)
    @students = User.where(classroom: @classroom, teacher: false)
    authorize @user, policy_class: ClassroomPolicy
    set_color
  end

  def settings
    @classroom = Classroom.find(params[:id])
    @activities = Activity.all
    @students = User.where(classroom: @classroom, teacher: false)
    @badges = []
    @students.each do |e|
      e.badges.each do |b|
        @badges << b
      end
    end
    authorize @user, policy_class: ClassroomPolicy
    # raise
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

  private

  # def toggle_availability
  #   raise
  #   @badges = []
  #   @students.each do |e|
  #     e.badges.each do |b|
  #       @badges << b
  #     end
  #   end
  #   badges.each do |e|
  #     if e.status > 0
  #       e.status = 0
  #     else
  #       e.status = 1
  #     end
  #     e.save
  #   end
  # end
end

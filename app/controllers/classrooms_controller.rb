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
  end


  def toggle_availability
    @classroom = Classroom.where(id: current_user.classroom.id)
    @activity = Activity.find(params[:id])
    @students = User.where(classroom: @classroom)

    @badges = []

    @students.each do |student|
      student.badges.each do |badge|
        if badge.activity == @activity
          @badges << badge
        end
      end
    end

    @badges.each do |badge|
      badge.status = "available" if status == "unavailable"
      badge.save
    end
  end

  private

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

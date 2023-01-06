class ClassroomsController < ApplicationController
  after_action :verify_authorized, except: [:add_activity, :remove_activity]

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
    authorize @user, policy_class: ClassroomPolicy
  end

  def add_activity
    @classroom = current_user.classroom
    @activity = Activity.find(params[:id])
    @students = User.where(classroom: @classroom)
    @badges = []

    @classroom.activities << @activity.title
    @classroom.save

    # get all the badges for the student in the classroom
    @students.each do |student|
      student.badges.each do |badge|
        @badges << badge if badge.activity == @activity
      end
    end

    # make all active value to true
    @badges.each do |badge|
      badge.active = true
      badge.save
    end

  end

  def remove_activity
    @classroom = current_user.classroom
    @activity = Activity.find(params[:id])
    @students = User.where(classroom: @classroom)
    @badges = []

    @classroom.activities.delete(@activity.title)
    @classroom.save

    # get all the badges for the student in the classroom
    @students.each do |student|
      student.badges.each do |badge|
        if badge.activity == @activity
          @badges << badge
        end
      end
    end

    # make the active vaue to false
    @badges.each do |badge|
      badge.active = false
      badge.save
    end
  end

  private

  def set_color
    @color = {
      available: 'blue',
      started: 'orange',
      marked: 'purple',
      completed: 'green'
    }
  end
end

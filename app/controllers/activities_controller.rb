class ActivitiesController < ApplicationController
  def show
  end

  def index
    @activities = policy_scope(Activity)
  end
end

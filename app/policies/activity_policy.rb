class ActivityPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def results?
    user.teacher? || record == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end

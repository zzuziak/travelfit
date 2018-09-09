class EventPolicy < ApplicationPolicy
  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def edit?
    return update?
  end

  def update?
    current_user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

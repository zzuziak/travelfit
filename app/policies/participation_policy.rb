class ParticipationPolicy < ApplicationPolicy
  def new?
    return true
  end

  def create?
    return true
  end

  def show
    return true
  end

  def update?
   true
  end


  def destroy?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

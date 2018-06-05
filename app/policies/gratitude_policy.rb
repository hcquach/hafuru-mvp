class GratitudePolicy < ApplicationPolicy
  def index?
    @gratitudes = policy_scope(Gratitude).order(created_at: :desc)
  end

  def show?
    record.user == user
  end

  def create?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user :user)
    end
  end
end

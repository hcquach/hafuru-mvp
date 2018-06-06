class CollaborationPolicy < ApplicationPolicy
   def index?
    record.match.matching_gratitude.user == user || record.match.matched_gratitude.user == user
  end

  def show?
    record.match.matching_gratitude.user == user || record.match.matched_gratitude.user == user
  end

  def create?
    return true
  end

  def update?
    record.match.matching_gratitude.user == user || record.match.matched_gratitude.user == user
  end

  def destroy?
    record.match.matching_gratitude.user == user || record.match.matched_gratitude.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end

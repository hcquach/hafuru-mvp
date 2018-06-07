class CollaborationPolicy < ApplicationPolicy
   def index?
    record.matching_gratitude.user == user || record.matched_gratitude.user == user
  end

  def show?
    record.matching_gratitude.user == user || record.matched_gratitude.user == user
  end

  def create?
    record.matching_gratitude.user == user || record.matched_gratitude.user == user
  end

  def update?
    record.matching_gratitude.user == user || record.matched_gratitude.user == user
  end

  def destroy?
    record.matching_gratitude.user == user || record.matched_gratitude.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end

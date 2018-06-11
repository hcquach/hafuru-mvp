class CollaborationPolicy < ApplicationPolicy
  def index?
    return true
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
      scope.where("id in (?)", user.matching_collaborations.select(&:id) + user.matched_collaborations.select(&:id))
    end
  end
end

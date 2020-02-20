class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
   record.booking.user == user
  end

  def new?
    true
  end

  def show?
    true
  end

  def update?
    record.booking.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.booking.user == user
  end

end

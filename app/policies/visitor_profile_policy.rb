class VisitorProfilePolicy < ApplicationPolicy
  def edit?
    false
  end

  def update?
    false
  end

  def destroy?
    false
  end
end

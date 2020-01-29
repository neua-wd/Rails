class StudentProfilePolicy < ApplicationPolicy
  attr_reader :user, :profile

  def initialize(user, profile)
    @user = user
    @profile = profile
  end

  def edit?
    user.role == "Instructor"
  end

  def update?
    user.role == "Instructor"
  end

  def destroy?
    user.role == "Instructor"
  end
end

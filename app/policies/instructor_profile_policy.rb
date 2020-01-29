class InstructorProfilePolicy < ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, profile)
    @user = user
    @profile = profile
  end

  def edit?
    user.id == @profile.user_id
  end

  def update?
    user.id == @profile.user_id
  end
end

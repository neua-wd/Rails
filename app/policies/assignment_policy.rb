class AssignmentPolicy < ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, course)
    @user = user
    @course = course
  end

  def new?
    @course.user_id == user.id
  end

  def create
    @course.user_id == user.id
  end
end

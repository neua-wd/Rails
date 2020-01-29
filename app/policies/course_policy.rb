class CoursePolicy < ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, course)
    @user = user
    @course = course
  end

  def new?
    user.role == "Instructor"
  end

  def edit?
    @course.user_id == user.id
  end

  def create?
    user.role == "Instructor"
  end

  def update?
    @course.user_id == user.id
  end
end

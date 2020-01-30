class AssignmentPolicy < ApplicationPolicy
  attr_reader :user, :course

  def initialize(user, assignment)
    @user = user
    @assignment = assignment
  end

  def new?
    @group = Group.find(@assignment.group_id)
    @course = Course.find(@group.course_id)
    @course.user_id == user.id
  end

  def create
    @group = Group.find(@assignment.group_id)
    @course = Course.find(@group.course_id)
    @course.user_id == user.id
  end
end

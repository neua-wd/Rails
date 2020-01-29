class UserPolicy < ApplicationPolicy
  attr_reader :user
  
  def new?
    user.role == "Instructor"
  end

  def edit?
    user.role == "Instructor"
  end

  def add_user?
    user.role == "Instructor"
  end

  def update?
    user.role == "Instructor"
  end
end

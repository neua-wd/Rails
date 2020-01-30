class FilterController < ApplicationController
  require 'set'

  def index
    @student_profiles = StudentProfile.all
  end

  def results
    @users = Set[]
    case
    when params[:group_name].nil?
      @students = StudentProfile.where(conditions)
    when both, none
      redirect_to filter_index_path
    else
      @groups = Group.where('name LIKE ?', "%#{params[:group_name]}%")
      @groups.each do |group|
        group.assignments.each do |assignment|
          @user = User.find(assignment.user_id)
          @users.add(@user.student_profile) unless @user.role != "Student"
        end
      end
      @students = @users.to_a
    end
  end
  

  private
    def conditions
      ['first_name LIKE ? AND last_name LIKE ? AND student_id LIKE ?', 
      "%#{params[:first_name]}%", "%#{params[:last_name]}%", "%#{params[:student_id]}%"]
    end

    def both
      !params[:group_name].nil? and !params[:first_name].nil? or
      !params[:group_name].nil? and !params[:last_name].nil? or
      !params[:group_name].nil? and !params[:student_id].nil?
    end

    def none
      params[:group_name].nil? and params[:first_name].nil? and
      params[:last_name].nil? and params[:student_id].nil?
    end
end

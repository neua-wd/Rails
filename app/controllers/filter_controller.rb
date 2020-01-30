class FilterController < ApplicationController
  def index
    @student_profiles = StudentProfile.all
  end

  def results
    @students = StudentProfile.where(conditions)
  end

  private
    def conditions
      ['first_name LIKE ? AND last_name LIKE ? AND student_id LIKE ?', 
      "%#{params[:first_name]}%", "%#{params[:last_name]}%", "%#{params[:student_id]}%"]
    end
end

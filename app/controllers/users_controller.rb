class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
    authorize User
  end

  def add_user
    @user = User.new(user_params)
    authorize @user
    @user.role = "Student"
     if @user.save!
       @student_profile = @user.create_student_profile
       redirect_to edit_student_profile_path(@student_profile.id)
     end
  end

  def add_group
    @course = Course.find(params[:format])
    @groups = @course.groups
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end
end

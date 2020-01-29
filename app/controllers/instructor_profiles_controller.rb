class InstructorProfilesController < ApplicationController
  before_action :set_instructor_profile, only: [:show, :edit, :update, :destroy]

  # GET /instructor_profiles
  # GET /instructor_profiles.json
  def index
    @instructor_profiles = InstructorProfile.all
  end

  # GET /instructor_profiles/1
  # GET /instructor_profiles/1.json
  def show
  end

  # GET /instructor_profiles/new
  def new
    @user = User.find(current_user.id)
    @instructor_profile = @user.build_instructor_profile
    # @instructor_profile = InstructorProfile.new
  end

  # GET /instructor_profiles/1/edit
  def edit
    @instructor_profile = InstructorProfile.find(params[:id])
    authorize @instructor_profile
  end

  # POST /instructor_profiles
  # POST /instructor_profiles.json
  def create
    @user = User.find(current_user.id)
    @instructor_profile = @user.create_instructor_profile(instructor_profile_params)
    # @instructor_profile = InstructorProfile.new(instructor_profile_params)

    respond_to do |format|
      if @instructor_profile.save
        format.html { redirect_to @instructor_profile, notice: 'Instructor profile was successfully created.' }
        format.json { render :show, status: :created, location: @instructor_profile }
      else
        format.html { render :new }
        format.json { render json: @instructor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instructor_profiles/1
  # PATCH/PUT /instructor_profiles/1.json
  def update
    authorize @instructor_profile
    respond_to do |format|
      if @instructor_profile.update(instructor_profile_params)
        format.html { redirect_to @instructor_profile, notice: 'Instructor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor_profile }
      else
        format.html { render :edit }
        format.json { render json: @instructor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructor_profiles/1
  # DELETE /instructor_profiles/1.json
  def destroy
    @instructor_profile.destroy
    respond_to do |format|
      format.html { redirect_to instructor_profiles_url, notice: 'Instructor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor_profile
      @instructor_profile = InstructorProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instructor_profile_params
      user_id = current_user.id
      params.require(:instructor_profile).permit(:first_name, :last_name, :citizen_id, :instructor_id, :department_name, :user_id)
    end
end

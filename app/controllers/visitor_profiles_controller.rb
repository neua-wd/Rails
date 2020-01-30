class VisitorProfilesController < ApplicationController
  before_action :set_visitor_profile, only: [:show, :edit, :update, :destroy]

  # GET /visitor_profiles
  # GET /visitor_profiles.json
  def index
    @visitor_profiles = VisitorProfile.all
  end

  # GET /visitor_profiles/1
  # GET /visitor_profiles/1.json
  def show
  end

  # GET /visitor_profiles/new
  def new
    @visitor_profile = VisitorProfile.new
  end

  # GET /visitor_profiles/1/edit
  def edit
  end

  # POST /visitor_profiles
  # POST /visitor_profiles.json
  def create
    @visitor_profile = VisitorProfile.new(visitor_profile_params)

    respond_to do |format|
      if @visitor_profile.save
        format.html { redirect_to @visitor_profile, notice: 'Visitor profile was successfully created.' }
        format.json { render :show, status: :created, location: @visitor_profile }
      else
        format.html { render :new }
        format.json { render json: @visitor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitor_profiles/1
  # PATCH/PUT /visitor_profiles/1.json
  def update
    respond_to do |format|
      if @visitor_profile.update(visitor_profile_params)
        format.html { redirect_to @visitor_profile, notice: 'Visitor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitor_profile }
      else
        format.html { render :edit }
        format.json { render json: @visitor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitor_profiles/1
  # DELETE /visitor_profiles/1.json
  def destroy
    @visitor_profile.destroy
    respond_to do |format|
      format.html { redirect_to visitor_profiles_url, notice: 'Visitor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor_profile
      @visitor_profile = VisitorProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitor_profile_params
      params.require(:visitor_profile).permit(:first_name, :last_name, :citizen_id, :user_id)
    end
end

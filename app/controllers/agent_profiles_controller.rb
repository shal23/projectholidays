class AgentProfilesController < ApplicationController
  # GET /agent_profiles
  # GET /agent_profiles.json
  def index
    @agent_profiles = AgentProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agent_profiles }
    end
  end

  # GET /agent_profiles/1
  # GET /agent_profiles/1.json
  def show
    @agent_profile = AgentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agent_profile }
    end
  end

  # GET /agent_profiles/new
  # GET /agent_profiles/new.json
  def new
    @agent_profile = AgentProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agent_profile }
    end
  end

  # GET /agent_profiles/1/edit
  def edit
    @agent_profile = AgentProfile.find(params[:id])
  end

  # POST /agent_profiles
  # POST /agent_profiles.json
  def create
    @agent_profile = AgentProfile.new(params[:agent_profile])

    respond_to do |format|
      if @agent_profile.save
        format.html { redirect_to @agent_profile, notice: 'Agent profile was successfully created.' }
        format.json { render json: @agent_profile, status: :created, location: @agent_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @agent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agent_profiles/1
  # PUT /agent_profiles/1.json
  def update
    @agent_profile = AgentProfile.find(params[:id])

    respond_to do |format|
      if @agent_profile.update_attributes(params[:agent_profile])
        format.html { redirect_to @agent_profile, notice: 'Agent profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_profiles/1
  # DELETE /agent_profiles/1.json
  def destroy
    @agent_profile = AgentProfile.find(params[:id])
    @agent_profile.destroy

    respond_to do |format|
      format.html { redirect_to agent_profiles_url }
      format.json { head :no_content }
    end
  end
end

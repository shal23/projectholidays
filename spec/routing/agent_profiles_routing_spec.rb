require "spec_helper"

describe AgentProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/agent_profiles").should route_to("agent_profiles#index")
    end

    it "routes to #new" do
      get("/agent_profiles/new").should route_to("agent_profiles#new")
    end

    it "routes to #show" do
      get("/agent_profiles/1").should route_to("agent_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/agent_profiles/1/edit").should route_to("agent_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/agent_profiles").should route_to("agent_profiles#create")
    end

    it "routes to #update" do
      put("/agent_profiles/1").should route_to("agent_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/agent_profiles/1").should route_to("agent_profiles#destroy", :id => "1")
    end

  end
end

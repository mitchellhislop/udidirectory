require "spec_helper"

describe UdidsController do
  describe "routing" do

    it "routes to #index" do
      get("/udids").should route_to("udids#index")
    end

    it "routes to #new" do
      get("/udids/new").should route_to("udids#new")
    end

    it "routes to #show" do
      get("/udids/1").should route_to("udids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/udids/1/edit").should route_to("udids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/udids").should route_to("udids#create")
    end

    it "routes to #update" do
      put("/udids/1").should route_to("udids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/udids/1").should route_to("udids#destroy", :id => "1")
    end

  end
end

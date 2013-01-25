require "spec_helper"

describe FeaturedHospitalsController do
  describe "routing" do

    it "routes to #index" do
      get("/featured_hospitals").should route_to("featured_hospitals#index")
    end

    it "routes to #new" do
      get("/featured_hospitals/new").should route_to("featured_hospitals#new")
    end

    it "routes to #show" do
      get("/featured_hospitals/1").should route_to("featured_hospitals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/featured_hospitals/1/edit").should route_to("featured_hospitals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/featured_hospitals").should route_to("featured_hospitals#create")
    end

    it "routes to #update" do
      put("/featured_hospitals/1").should route_to("featured_hospitals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/featured_hospitals/1").should route_to("featured_hospitals#destroy", :id => "1")
    end

  end
end

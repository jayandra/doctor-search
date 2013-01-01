require "spec_helper"

describe InvolvementsController do
  describe "routing" do

    it "routes to #index" do
      get("/involvements").should route_to("involvements#index")
    end

    it "routes to #new" do
      get("/involvements/new").should route_to("involvements#new")
    end

    it "routes to #show" do
      get("/involvements/1").should route_to("involvements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/involvements/1/edit").should route_to("involvements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/involvements").should route_to("involvements#create")
    end

    it "routes to #update" do
      put("/involvements/1").should route_to("involvements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/involvements/1").should route_to("involvements#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe AccomodationsController do
  describe "routing" do

    it "routes to #index" do
      get("/accomodations").should route_to("accomodations#index")
    end

    it "routes to #new" do
      get("/accomodations/new").should route_to("accomodations#new")
    end

    it "routes to #show" do
      get("/accomodations/1").should route_to("accomodations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/accomodations/1/edit").should route_to("accomodations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/accomodations").should route_to("accomodations#create")
    end

    it "routes to #update" do
      put("/accomodations/1").should route_to("accomodations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/accomodations/1").should route_to("accomodations#destroy", :id => "1")
    end

  end
end

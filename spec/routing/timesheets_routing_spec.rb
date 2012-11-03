require "spec_helper"

describe TimesheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/timesheets").should route_to("timesheets#index")
    end

    it "routes to #new" do
      get("/timesheets/new").should route_to("timesheets#new")
    end

    it "routes to #show" do
      get("/timesheets/1").should route_to("timesheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/timesheets/1/edit").should route_to("timesheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/timesheets").should route_to("timesheets#create")
    end

    it "routes to #update" do
      put("/timesheets/1").should route_to("timesheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/timesheets/1").should route_to("timesheets#destroy", :id => "1")
    end

  end
end

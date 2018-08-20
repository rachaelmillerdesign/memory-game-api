require "rails_helper"

RSpec.describe CreaturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/creatures").to route_to("creatures#index")
    end


    it "routes to #show" do
      expect(:get => "/creatures/1").to route_to("creatures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/creatures").to route_to("creatures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/creatures/1").to route_to("creatures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/creatures/1").to route_to("creatures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/creatures/1").to route_to("creatures#destroy", :id => "1")
    end

  end
end

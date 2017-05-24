require "rails_helper"

RSpec.describe MenuXMealsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menu_x_meals").to route_to("menu_x_meals#index")
    end

    it "routes to #new" do
      expect(:get => "/menu_x_meals/new").to route_to("menu_x_meals#new")
    end

    it "routes to #show" do
      expect(:get => "/menu_x_meals/1").to route_to("menu_x_meals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/menu_x_meals/1/edit").to route_to("menu_x_meals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/menu_x_meals").to route_to("menu_x_meals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/menu_x_meals/1").to route_to("menu_x_meals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/menu_x_meals/1").to route_to("menu_x_meals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/menu_x_meals/1").to route_to("menu_x_meals#destroy", :id => "1")
    end

  end
end

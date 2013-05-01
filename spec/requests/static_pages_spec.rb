require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the h1 'Life Buoy'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Life Buoy')
    end
    
    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Life Buoy | Home")
    end
  end
  
  describe "Help page" do
    
    it "should have the h1 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Life Buoy | Help")
    end
  end
  
  describe "About page" do
    
    it "should have the h1 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Life Buoy | About Us")
    end
  end
end

require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('title', 
                                :text => 'Sample App') 
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                                :text => " | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                                :text => " | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                                :text => " | About Us")
    end
  end

  describe "Contact Page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => " | Contact")
    end
  end
end

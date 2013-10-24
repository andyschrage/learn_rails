require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    before(:each) do
      visit '/static_pages/home'
      @page = page
    end
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #visit '/static_pages/home'
      @page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      @page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should have the right title" do
      #visit '/static_pages/home'
      @page.should have_selector('title',
                                :text => " | Home")
    end
  end

  describe 'Help page' do
    before(:each) do
      visit '/static_pages/help'
    end

    it 'should have the content "Help"' do
      page.should have_selector('h1', :text => 'Help')
    end

    it 'should have the right title' do
      page.should have_selector('title',
                  :text => " | Help")
    end

  end

  describe "About page" do
    before(:each) do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      #visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it 'should have the right title' do
      page.should have_selector('title', :text => ' | About')
    end
  end
end

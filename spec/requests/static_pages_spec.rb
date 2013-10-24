require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    subject { page }
    before(:each) do
      visit home_path
      #@page = page
    end

    it { should have_selector('h1', text: 'Sample App')}

    it "should have the base title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should have the right title" do
      #visit '/static_pages/home'
      page.should_not have_selector('title',
                                :text => " | Home")
    end
  end

  describe 'Help page' do
    before(:each) do
      visit help_path
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
      visit about_path
    end

    it "should have the content 'About Us'" do
      #visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it 'should have the right title' do
      page.should have_selector('title', :text => ' | About')
    end
  end

  describe "Contact page" do
    before(:each) do
      visit contact_path
      @page = page #HAH HA HAHA HA
    end

    it "should have the h1 'Contact'" do
      @page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      @page.should have_selector('title',
                                text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end

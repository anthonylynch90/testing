require 'spec_helper'

describe "Static pages" do
let(:base_title){"Ruby on rails testing page | "}

  describe "Home page" do
    it "It should have the content 'Sample App'" do
      visit '/static_pages/home'
	  page.should have_selector('h1', :text => "#{base_title}Sample App")
    end
	
	it "The title should have 'About' in it" do
      visit '/static_pages/about'
	  page.should have_selector('title', :text => "home")
    end
  end
  
  describe "Help page" do
    it "It should have the content 'Help'" do
      visit '/static_pages/help'
	  page.should have_selector('h1', :text => "#{base_title}Help")
    end
	
	it "The title should have 'About' in it" do
      visit '/static_pages/about'
	  page.should have_selector('title', :text => "help")
    end
  end
  
  describe "About page" do
    it "It should have the content 'About'" do
      visit '/static_pages/about'
	  page.should have_selector('h1', :text => "#{base_title}About")
    end
	
	it "The title should have 'About' in it" do
      visit '/static_pages/about'
	  page.should have_selector('title', :text => "About")
    end
  end
end

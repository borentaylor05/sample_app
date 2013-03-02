require 'spec_helper'

describe "Static pages" do
	describe "Home page" do
		it "should have the h1 'Sample App'" do
		visit '/static_pages/index'
		page.should have_selector('h1', :text=> 'Sample App')
		end
	end

	describe "Help Page" do
		it "Should have the h1 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('h1', :text=> 'Help')
		end
	end

	describe "About Page" do
		it "Should have the content 'About'" do
		visit "/static_pages/about"
		page.should have_content('About')
		end
	end
end
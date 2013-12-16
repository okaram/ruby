require 'spec_helper'

describe "StaticPages" do
	describe "Home Page" do
		it "should have SampleApp somewhere" do 
			visit "/static_pages/home"
			page.should_have_content('Sample App')
		end
	end
end

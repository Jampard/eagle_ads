require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
    
    describe "Home page" do

      it "should have the content 'Eagle Ads'" do
        visit '/static_pages/home'
        page.should have_content('Eagle Ads')
      end
      it "should have the content 'private classified ads'" do
        visit '/static_pages/home'
        page.should have_content('private classified ads')
      end
     
    end

    describe "About page" do

      it "should have the content 'About'" do
        visit '/static_pages/about'
        page.should have_content('About')
      end

    end

    describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        page.should have_content('Help')
      end

    end

  end
end

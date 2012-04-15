require 'spec_helper'

describe "Urls" do
  describe "GET /urls" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get urls_path
      response.status.should be(200)
    end
  end
  
  describe "should" do
    it "show the form to the user" do
      visit root_path
      page.current_path.should == root_path
      page.should have_selector "input.btn"
      page.should have_content "Url path"
    end
  end
  
end

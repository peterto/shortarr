require 'spec_helper'

describe UrlsController do
  render_views

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end
  
  describe "GET 'new'" do
    it "should get the new page" do
      get :new
      assigns(:url).is_a?(Url).should be_true
    end
  end

end

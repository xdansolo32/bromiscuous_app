require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Welcome to Bromiscuous!"
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
  	  get 'home'
  	  response.should have_selector("title",
                    :content => @base_title + " | Home")
	end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
  	  get 'contact'
  	  response.should have_selector("title",
                    :content => @base_title + " | ET Phone Bro")
	end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
  	  get 'about'
  	  response.should have_selector("title",
                    :content => @base_title + " | Bro Lifestyle")
	end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
  	  get 'help'
  	  response.should have_selector("title",
                    :content => @base_title + " | Help a Bro Out")
	end
  end

end

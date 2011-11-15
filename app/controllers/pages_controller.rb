class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "ET Phone Bro"
  end
  
  def about
    @title = "Bro Lifestyle"
  end

end

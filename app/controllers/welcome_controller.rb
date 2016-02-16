class WelcomeController < ApplicationController
  def home
    
  end
  def about
    @time = Time.now
  end
end
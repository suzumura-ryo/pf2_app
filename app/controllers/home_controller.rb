class HomeController < ApplicationController
  def top
    @recipes = Recipe.all
  end
  
  def logged_in_top
  end
  
end

class RecipesController < ApplicationController
  def new
  end

  def index
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end
end

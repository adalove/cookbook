class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    render 'edit'
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
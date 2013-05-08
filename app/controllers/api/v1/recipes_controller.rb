class Api::V1::RecipesController < ApiController

  def index
    respond_with Recipe.all
  end

  def show
    respond_with Recipe.find(params[:id])
  end

end
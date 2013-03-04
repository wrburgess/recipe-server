class Api::V1::FormulasController < ApiController

  def index
    respond_with Formula.all
  end

  def show
    respond_with Formula.find(params[:id])
  end

end
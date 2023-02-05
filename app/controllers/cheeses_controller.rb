class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    ## find a cheese using id from url
    cheese = Cheese.find_by(id: params[:id])
    ## send a JSON response
    render json: cheese
    
  end

end

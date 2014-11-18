class Api::PlacesController < ApplicationController


  def index
    @pizzas = Place.all
    render json: @pizzas
  end

  def create
    @pizza = Place.new(params.require(:places).permit(:name, :city))
    @pizza.save
    render json: @pizza
  end
end

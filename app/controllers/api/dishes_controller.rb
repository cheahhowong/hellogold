class Api::DishesController < ApplicationController
  def index
  	dishes = Dish.all
  	render json: {dishes: dishes}, status: :ok
  end

  def show
  	dish = Dish.find_by(id: params[:id])
  	render json: {dishes: dish}, status: :ok
  end

  def dishes
    dishes = Dish.find_by(id: params[:dish_id])
    dishes_restaurants = dishes.restaurants
    render json: {dishes: dishes_restaurants}, status: :ok
  end
end

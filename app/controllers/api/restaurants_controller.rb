class Api::RestaurantsController < ApplicationController
  def index
  	restaurants = Restaurant.all
  	render json: {restaurants: restaurants}, status: :ok
  end

  def show
  	restaurant = Restaurant.find_by(id: params[:id])
  	render json: {dishes: restaurant}, status: :ok
  end

  def restaurants
    restaurant = Restaurant.find_by(id: params[:restaurant_id])
    restaurant_dishes = restaurant.dishes
    render json: {restaurants: restaurant_dishes}, status: :ok
  end
end

class RestaurantsController < ApplicationController
  def update
    @restaurant = Restaurant.find(params[:id])


    actual = @restaurant.votes
    new = actual +1
    @restaurant.update(votes:  new)
    redirect_to battle_path(@restaurant.battle)
  end
end

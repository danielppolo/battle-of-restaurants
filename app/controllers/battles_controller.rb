require 'open-uri'
class BattlesController < ApplicationController
  def show
    @new_battle = Battle.new
    @battle = Battle.find(params[:id])
    if Time.now > @battle.ends_at
      @battle.ended!
    end
    @restaurants = @battle.restaurants
    @sorted = @restaurants.sort { |a,b| a.votes <=> b.votes }
    @most = @sorted.reverse.first
  end

  def new
    @battle = Battle.new
  end

  def create
    b = Battle.create
    # place_url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?query=restaurants&key=AIzaSyCXCzr2-NVntSbR2s3X6ly0Frre4dG6_4Y"
    # place_serialized = open(place_url).read
    # place = JSON.parse(place_serialized)
    arr = %w(Puyol McDonalds Posta)
    arr.each do |name|
      r = Restaurant.new(name: name)
      r.battle = b
      r.save
    end
    redirect_to battle_path(b)
  end
end

class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
@restaurant                         = Restaurant.new
@restaurant.name                    = params[:restaurant][:name]
@restaurant.address                 = params[:restaurant][:address]
@restaurant.capacity                = params[:restaurant][:capacity]
@restaurant.menu                    = params[:restaurant][:menu]
@restaurant.summary                 = params[:restaurant][:summary]
@restaurant.price                   = params[:restaurant][:price]
@restaurant.owner_id                = params[:restaurant][:owner_id]

# @restaurant.open_time = Time.utc(params[:restaurant]["open_time(1i)"].to_i,
#                                       params[:restaurant]["open_time(2i)"].to_i,
#                                       params[:restaurant]["open_time(3i)"].to_i,
#
#
# @restaurant.close_time = Time.utc(params[:restaurant]["close_time(1i)"].to_i,
#                                         params[:restaurant]["close_time(2i)"].to_i,
#                                         params[:restaurant]["close_time(3i)"].to_i,
#
#
# @restaurant.user_id = current_user.id
#
#

    if @restaurant.save
      redirect_to restaurants_url

    else
      render :new
    end
  end
end

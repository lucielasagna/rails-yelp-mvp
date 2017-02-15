class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    #@task = Task.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def edit
    #@task = Task.find(params[:id])
  end

  def update
    #@task = Task.find(params[:id])
    @restaurant.update(task_params)
  end

  def destroy
    #@task = Task.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

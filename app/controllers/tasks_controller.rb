class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @tast = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save

    redirect_to task_path(task)
  end

  # def edit
  #   # params
  #   # => { id: '1' }

  #   # @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   # {"utf8"=>"✓", "_method"=>"patch", "authenticity_token"=>"gj9Sc...==",
  #   #  "restaurant"=>{"name"=>"Les bouteilles", "address"=>"Talensac, Nantes", "stars"=>"3"},
  #   #  "commit"=>"Update Restaurant",
  #   #  "id"=>"1"}

  #   # @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   # @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end

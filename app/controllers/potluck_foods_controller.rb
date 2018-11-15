class PotluckFoodsController < ApplicationController
  def index
    @potluck_foods = PotluckFood.all
  end

  def show
    @potluck_food = PotluckFood.find(params[:id])
  end

  def new
  @potluck_food = PotluckFood.new
  @food_categories = FoodCategory.all
  # @user = User.find(params[:id])
  @users = User.all
  @potlucks = Potluck.all
  end

  def create
  @potluck_food = PotluckFood.create(potluck_food_params)
  if @potluck_food.valid?

    redirect_to potluck_food_path(@potluck_food)
  else

    @food_categories = FoodCategory.all
    render :new
  end
  end

  def destroy
    @potluck_food = PotluckFood.find(params[:id])
    @potluck_food.destroy
    redirect_to potlucks_path
  end



  private

  def potluck_food_params
  params.require(:potluck_food).permit(:user_id, :food_category_id, :potluck_id)
  end
end

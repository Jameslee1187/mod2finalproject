class PotlucksController < ApplicationController
  def index
    @potlucks = Potluck.all
  end

  def show
    @potluck = Potluck.find(params[:id])
  end


  def new
    @potluck = Potluck.new
    @locations = Location.all

  end

  def create
    @potluck = Potluck.new(potluck_params)
    if @potluck.save
      redirect_to potluck_path(@potluck)
    else
      render :new
    end
  end

  def edit
    @potluck = Potluck.find(params[:id])
    @locations = Location.all

  end

  def update
    @potluck = Potluck.find(params[:id])
    @potluck.update(potluck_params)
    if @potluck.valid?
      redirect_to potluck_path(@potluck)
    else
      render :edit
    end
  end

  def destroy
    @potluck = Potluck.find(params[:id])
    @potluck.destroy
    redirect_to potlucks_path
  end




private
  def potluck_params
    params.require(:potluck).permit(:attendees, :description, :location_id, :address)
  end

end

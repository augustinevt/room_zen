class HousesController < ApplicationController

  def index
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.user_id = User.first.id
    if @house.save
      redirect_to @house
    else
      render :new
    end
  end


  private

  def house_params
    params.require(:house).permit(:title, :address)
  end

end

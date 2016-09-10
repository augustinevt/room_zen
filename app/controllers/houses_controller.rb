class HousesController < ApplicationController

  def index
    @houses = House.all
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
      flash[:notice] = "House was saved successfully"
      redirect_to @house
    else
      flash[:alert] = "House was not saved!"
      render :new
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      flash[:notice] = "House was update successfully"
      redirect_to @house
    else
      flash[:alert] = "House was not saved!"
      render :edit
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private

  def house_params
    params.require(:house).permit(:title, :address)
  end

end

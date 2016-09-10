class RequestsController < ApplicationController
  def new
    @house = House.find(params[:house_id])
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @house = House.find(params[:house_id])
    @request = @house.requests.new(request_params)
    @request.user_id = User.first.id
    if @request.save
      redirect_to house_request_path(@house, @request)
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end
end

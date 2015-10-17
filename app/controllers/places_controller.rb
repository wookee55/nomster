class PlacesController < ApplicationController
  def index
    @places = Place.order(:name).page(params[:page]).per(5)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.create(place_params)
    redirect_to root_path
  end

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
end
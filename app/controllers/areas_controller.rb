class AreasController < ApplicationController

  def new
    @area = Area.new
  end

  def create
    @country = Country.find(params[:country_id])
    @area = Area.new(area_params)
    @area.country = @country
    @area.save
    redirect_to country_path(@country)
  end

  def show
    @area = Area.find(params[:id])
  end


  private

  def area_params
    params.require(:area).permit(:name, :country_id)
  end

end

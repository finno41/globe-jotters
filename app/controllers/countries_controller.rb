class CountriesController < ApplicationController
  before_action :authenticate_user!

  def home
    @countries = Country.all.sort_by(&:name)

  end

  def index
    if params[:query].present?
      @countries = Country.where("name LIKE ?", "%#{params[:query]}%")
    else
      @countries = Country.all.sort_by(&:name)
    end
  end

  def show
    @country = Country.find(params[:id])
    @area = Area.new
    @areas = Area.where(country_id: @country)
  end

end

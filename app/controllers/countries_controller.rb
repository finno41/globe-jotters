class CountriesController < ApplicationController
  before_action :authenticate_user!

  def home
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

end

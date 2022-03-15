class CountriesController < ApplicationController
  before_action :authenticate_user!

  def home
    @countries = Country.all.sort_by(&:name)
  end

  def show
    @country = Country.find(params[:id])
  end

end

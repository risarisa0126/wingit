class Tourists::TouristsController < ApplicationController
  before_action :authenticate_tourist!, only: [:show, :mypage]
  before_action :tourist_find, only: [:show, :mypage, :update]

  def index
  	@tourists = Tourist.all
  end


  def show
    @room = Room.new
  end

  def mypage
  	@tourist.tourist_native_launguages.build
    @tourist.tourist_native_countries.build
    @tourist.tourist_practicing_launguages.build
    @tourist.tourist_sightseeing_places.build
  end

  def update
  	@tourist.update(tourist_params)
    redirect_to mypage_tourist_path(@tourist)
  end



  private

  def tourist_find
  	@tourist = Tourist.find(params[:id])
  end

  def tourist_params
  params.require(:tourist).permit(:id, :tourist_lastname, :tourist_firstname, :tourist_username, :tourist_gender, :tourist_age, :tourist_about_me,
  								tourist_native_launguages_attributes: [:id, :tourist_language, :_destroy],
  								tourist_native_countries_attributes: [:id, :tourist_country, :_destroy],
  								tourist_practicing_launguages_attributes: [:id, :tourist_practicing, :_destroy],
  								tourist_sightseeing_places_attributes: [:id, :sightseeing_place, :_destroy])
  end

end

class Tourists::TouristsController < ApplicationController
  before_action :authenticate_tourist!, only: [:mypage]
  before_action :correct_tourist, only: [:mypage, :update]
  before_action :tourist_find, only: [:show, :mypage, :update]

  def index
    @q = Tourist.includes(:tourist_sightseeing_places, :tourist_practicing_launguages).ransack(params[:q])
    @tourists = @q.result(distinct: true)
  end


  def show
    @newroom = Room.new
    if guide_signed_in?
      @room = Room.where(tourist_id: @tourist.id, guide_id: current_guide.id)
    elsif current_tourist
      @room = Room.all
    elsif tourist_signed_in?
      redirect_to root_path
    else
      redirect_to new_guide_registration_path
    end
  end

  def mypage
  	# @tourist.tourist_native_launguages.build
   #  @tourist.tourist_native_countries.build
   #  @tourist.tourist_practicing_launguages.build
   #  @tourist.tourist_sightseeing_places.build
  end

  def update
  	@tourist.update(tourist_params)
    redirect_to mypage_tourist_path(@tourist)
  end



  private

  def tourist_find
  	@tourist = Tourist.find(params[:id])
  end

  def correct_tourist
    @tourist = Tourist.find(params[:id])
    unless @tourist == current_tourist
      redirect_to root_path
    end
  end

  def tourist_params
  params.require(:tourist).permit(:id, :tourist_lastname, :tourist_firstname, :tourist_username, :tourist_gender, :tourist_age, :tourist_about_me,
  								tourist_native_launguages_attributes: [:id, :tourist_language, :_destroy],
  								tourist_native_countries_attributes: [:id, :tourist_country, :_destroy],
  								tourist_practicing_launguages_attributes: [:id, :tourist_practicing, :_destroy],
  								tourist_sightseeing_places_attributes: [:id, :sightseeing_place, :_destroy])
  end

end

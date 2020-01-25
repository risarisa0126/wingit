class Guides::GuidesController < ApplicationController
  before_action :authenticate_guide!, only: [:mypage]
  before_action :correct_guide, only: [:mypage, :update]
  before_action :guide_find, only: [:show, :mypage, :update]

  def index
    @q = Guide.includes(:able_to_guide_places, :guide_practicing_launguages, :dayofweeks).ransack(params[:q])
    @guides = @q.result(distinct: true)
  end


  def show
    @newroom = Room.new
    if tourist_signed_in?
      @room = Room.where(guide_id: @guide.id, tourist_id: current_tourist.id)
    elsif current_guide
      @room = Room.all
    elsif guide_signed_in?
      redirect_to root_path
    else
      redirect_to new_tourist_registration_path
    end
  end

  def mypage
   #  @guide.able_to_guide_places.build
  	# @guide.guide_native_launguages.build
   #  @guide.guide_native_countries.build
   #  @guide.guide_practicing_launguages.build
   #  @guide.dayofweeks.build
  end

  def update
  	@guide.update(guide_params)
    redirect_to mypage_guide_path(@guide)
  end



  private

  def guide_find
  	@guide = Guide.find(params[:id])
  end

  def correct_guide
    @guide = Guide.find(params[:id])
    unless @guide == current_guide
      redirect_to mypage_guide_path
    end
  end

  def guide_params
  params.require(:guide).permit(:id, :guide_lastname, :guide_firstname, :guide_username, :guide_gender, :guide_age, :guide_about_me,
  								able_to_guide_places_attributes: [:id, :guide_place, :_destroy],
                  guide_native_launguages_attributes: [:id, :guide_language, :_destroy],
  								guide_native_countries_attributes: [:id, :guide_country, :_destroy],
  								guide_practicing_launguages_attributes: [:id, :guide_practicing, :_destroy],
                  dayofweeks_attributes: [:id, :day, :_destroy])
  end

end

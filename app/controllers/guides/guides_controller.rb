class Guides::GuidesController < ApplicationController
  before_action :authenticate_guide!, only: [:show, :mypage]
  before_action :guide_find, only: [:show, :mypage, :update]

  def index
  	@guides = Guide.all
  end


  def show
  end

  def mypage
  	@guide.guide_native_launguages.build
    @guide.guide_native_countries.build
    @guide.guide_practicing_launguages.build
  end

  def update
  	@guide.update(guide_params)
    redirect_to mypage_guide_path(@guide)
  end



  private

  def guide_find
  	@guide = Guide.find(params[:id])
  end

  def guide_params
  params.require(:guide).permit(:id, :guide_lastname, :guide_firstname, :guide_username, :guide_gender, :guide_age, :guide_about_me, :daysofweek,
  								 guide_native_launguages_attributes: [:id, :guide_language, :_destroy],
  								 guide_native_countries_attributes: [:id, :guide_country, :_destroy],
  								 guide_practicing_launguages_attributes: [:id, :guide_practicing, :_destroy])
  end

end

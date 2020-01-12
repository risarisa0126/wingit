class Guides::GuidesController < ApplicationController
  before_action :authenticate_guide!, only: [:show, :mypage]
  before_action :guide_find, only: [:show, :mypage]

  def index
  	@guides = Guide.all
  end

  def show
  end

  def update
  end

  def mypage
  end


  private

  def guide_find
  	@guide = Guide.find(params[:id])
  end
end

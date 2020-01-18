class Guides::RoomsController < ApplicationController

  def index
  	@rooms = current_guide.rooms.all
  end


  def show
  	@room = Room.find(params[:id])
  	@messages = @room.messages.all
  	# @message = Message.new 新規メッセージ投稿
  end


  def create
  	@room = current_tourist.rooms.create(guide_id: params[:guide_id])
  	@room.save
  	redirect_to @room
  end


  private


  def room_params
  params.require(:room).permit(:guide_id, :tourist_id)
  end
end

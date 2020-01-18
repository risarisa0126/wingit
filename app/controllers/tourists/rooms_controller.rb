class Tourists::RoomsController < ApplicationController

  def index
  	@rooms = current_tourist.rooms.all
  end


  def show
  	@room = Room.find(params[:id])
  	@messages = @room.messages.all
  	# @message = Message.new 新規メッセージ投稿
  end


  def create
  	@room = Room.new(room_params)
  	current_tourist.tourist_rooms.create(room_id: @room.id)
  	@room.save
  	redirect_to @room
  end


  private


  def room_params
  params.require(:room).permit(:name)
  end


end

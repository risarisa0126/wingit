class Guides::MessagesController < ApplicationController


  def create
  #   @room = Room.find(params[:room_id])
  #   @message = Message.new(message_params)
  #   #メッセージがuserによるものだったらis_user=true, shopによるものだったらis_user=false
  #   if guide_signed_in?
  #     @message.is_guide = true
  #   elsif tourist_signed_in?
  #     @message.is_guide = false
  #   end

  #   @message.room_id = @room.id
  #   if @message.save
  #     redirect_to guide_room_path
  #   else
  #     redirect_to guides_room_path
  #   end
  # end

  # private
  # def message_params
  #   params.require(:message).permit(:body)
  # end
end
